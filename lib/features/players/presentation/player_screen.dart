import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/players_providers.dart';

class PlayerScreen extends ConsumerWidget {
  final int playerId;
  final String playerName;

  const PlayerScreen({super.key, required this.playerId, required this.playerName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchesAsync = ref.watch(playerMatchesProvider(playerId));

    return Scaffold(
      appBar: AppBar(title: Text(playerName)),
      body: matchesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Ошибка: $e')),
        data: (matches) {
          if (matches.isEmpty) {
            return const Center(child: Text('Нет данных о матчах'));
          }
          return ListView.builder(
            itemCount: matches.length,
            itemBuilder: (context, index) {
              final m = matches[index];
              final home = m.score.fullTime?.home;
              final away = m.score.fullTime?.away;
              final isFinished = m.status == 'FINISHED';

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          m.homeTeam.shortName ?? m.homeTeam.name,
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          isFinished ? '$home : $away' : 'vs',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(m.awayTeam.shortName ?? m.awayTeam.name),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
