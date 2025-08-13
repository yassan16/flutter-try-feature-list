import 'package:flutter_try_feature_list/common/infrastructure/dto/pokeapi/pokemon/pokemon_dto.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/001_http/domain/pokemon_repository.dart';

class GetPokemonUsecase {
  final PokemonRepository _pokemonRepository;

  GetPokemonUsecase(this._pokemonRepository);

  Future<PokemonDto> execute() {
    return _pokemonRepository.getPokemon();
  }
}
