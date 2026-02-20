import 'package:flutter/material.dart';

class SearchBarOverlay<T> extends StatefulWidget {
  final List<T> items;
  final String Function(T item) searchLabel;
  final Widget Function(T item) itemsBuilder;
  final String hint;

  const SearchBarOverlay({
    super.key,
    required this.items,
    required this.searchLabel,
    required this.itemsBuilder,
    this.hint = 'Поиск',
  });

  @override
  State<SearchBarOverlay<T>> createState() => _SearchBarOverlayState<T>();
}

class _SearchBarOverlayState<T> extends State<SearchBarOverlay<T>> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  final _layerLink = LayerLink();
  final _resultNotifier = ValueNotifier<List<T>>([]);

  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _removeOverlay();
    _resultNotifier.dispose();
    _controller.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) {
      Future.delayed(const Duration(milliseconds: 150), () {
        if (mounted && !_focusNode.hasFocus) {
          _removeOverlay();
        }
      });
    }
  }

  void _onChanged(String query) {
    final q = query.toLowerCase().trim();

    if (q.isEmpty) {
      _resultNotifier.value = [];
      _removeOverlay();
      return;
    }

    final filtered = widget.items
        .where((item) => widget.searchLabel(item).toLowerCase().contains(q))
        .toList();

    _resultNotifier.value = filtered;

    if (filtered.isEmpty) {
      _removeOverlay();
      return;
    }

    if (_overlayEntry == null) {
      _showOverlay();
    }
  }

  void _showOverlay() {
    final overlay = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (_) => _SearchDropdown<T>(
        layerLink: _layerLink,
        resultsNotifier: _resultNotifier,
        itemBuilder: widget.itemsBuilder,
        onDismiss: _closeSearch,
      ),
    );
    overlay.insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _closeSearch() {
    _controller.clear();
    _resultNotifier.value = [];
    _removeOverlay();
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        onChanged: _onChanged,
        decoration: InputDecoration(
          hintText: widget.hint,
          prefixIcon: const Icon(Icons.search, size: 20),
          suffixIcon: ValueListenableBuilder<List<T>>(
            valueListenable: _resultNotifier,
            builder: (_, results, __) => _controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.close, size: 20),
                    onPressed: _closeSearch,
                  )
                : const SizedBox.shrink(),
          ),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          filled: true,
        ),
      ),
    );
  }
}

class _SearchDropdown<T> extends StatelessWidget {
  final LayerLink layerLink;
  final ValueNotifier<List<T>> resultsNotifier;
  final Widget Function(T item) itemBuilder;
  final VoidCallback onDismiss;

  const _SearchDropdown({
    required this.layerLink,
    required this.resultsNotifier,
    required this.itemBuilder,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return ValueListenableBuilder<List<T>>(
      valueListenable: resultsNotifier,
      builder: (context, results, _) {
        if (results.isEmpty) return const SizedBox.shrink();

        const itemHeight = 56.0;
        const maxVisible = 5;
        final listHeight = (results.length.clamp(1, maxVisible) * itemHeight)
            .toDouble();

        return Positioned(
          width: screenWidth,
          child: CompositedTransformFollower(
            link: layerLink,
            showWhenUnlinked: false,
            offset: const Offset(-12, 52),
            child: Material(
              elevation: 8,
              shadowColor: Colors.black38,
              borderRadius: BorderRadius.circular(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: listHeight + 8),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    shrinkWrap: true,
                    itemCount: results.length,
                    itemBuilder: (context, index) =>
                        itemBuilder(results[index]),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
