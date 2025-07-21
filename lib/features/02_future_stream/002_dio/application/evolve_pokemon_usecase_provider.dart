import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/pokemon.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/repository/pokemon_repositoryImpl.dart';

class EvolvePokemonUsecase {
  final PokemonRepositoryimpl repository;
  EvolvePokemonUsecase(this.repository);

  Future<Pokemon> evolvePokemon(Pokemon pokemon) async {
    if (!pokemon.canEvolve()) {
      throw Exception('This Pokémon cannot evolve');
    }
    return repository.getEvlovePokemon(pokemon.id + 1);
  }
}
