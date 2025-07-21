import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/pokemon.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/presentation/pokemon_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_notifier.g.dart';

@riverpod
class PokemonNotifier extends _$PokemonNotifier {
  @override
  Future<Pokemon> build() async {
    final pokemon = await ref.read(getPokemonUsecaseProvider).execute();
    return pokemon;
  }

  Future<void> evolvePokemon() async {
    try {
      final pokemon = await ref
          .read(evolvePokemonUsecaseProvider)
          .evolvePokemon(state.value!);
      state = AsyncData(pokemon);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }
}
