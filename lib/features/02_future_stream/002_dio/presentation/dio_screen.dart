import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/presentation/state/pokemon_notifier.dart';

class DioScreen extends ConsumerStatefulWidget {
  const DioScreen({super.key});

  @override
  ConsumerState<DioScreen> createState() => _DioScreenState();
}

class _DioScreenState extends ConsumerState<DioScreen> {
  @override
  Widget build(BuildContext context) {
    final pokemon = ref.watch(pokemonNotifierProvider);

    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                ref.read(pokemonNotifierProvider.notifier).evolvePokemon();
              },
              child: const Text("進化!!!"),
            ),
            pokemon.when(
              data: (data) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ID: ${data.id}'),
                    Text('Name: ${data.name}'),
                    Image.network(data.url, width: 100.0),
                  ],
                );
              },
              error: (error, StackTrace) => const Text("エラー"),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
