import 'package:flutter_try_feature_list/features/02_future_stream/001_http/domain/pokemon_repository.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/001_http/infrastructure/dto/pokemon_dto.dart';

class GetPokemonUsecase {
  final PokemonRepository _pokemonRepository;

  GetPokemonUsecase(this._pokemonRepository);

  Future<PokemonDto> execute() {
    return _pokemonRepository.getPokemon();
  }
}
