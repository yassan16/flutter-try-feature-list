import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/pokemon.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/pokemon_repository.dart';

class GetPokemonUsecase {
  final PokemonRepository _pokemonRepository;

  GetPokemonUsecase(this._pokemonRepository);

  Future<Pokemon> execute() {
    return _pokemonRepository.getPokemon();
  }
}
