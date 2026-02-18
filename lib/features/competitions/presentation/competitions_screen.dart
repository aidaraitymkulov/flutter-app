import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../domain/competitions_providers.dart';

class CompetitionsScreen extends ConsumerWidget {
  const CompetitionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final competitionsAsync = ref.watch(competitionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Лиги и турниры'),
        centerTitle: true,
      ),
      body: competitionsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Ошибка: $e')),
        data: (competitions) => ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: competitions.length,
          itemBuilder: (context, index) {
            final comp = competitions[index];
            return Card(
              child: ListTile(
                leading: comp.emblem != null
                    ? Image.network(comp.emblem!, width: 40, height: 40)
                    : const Icon(Icons.emoji_events),
                title: Text(comp.name),
                subtitle: Text(comp.code),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.push(
                  '/competition/${comp.code}?name=${Uri.encodeComponent(comp.name)}',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
