import 'package:flutter_try_feature_list/common/infrastructure/dto/pokeapi/pokemon/pokemon_dto.dart';

abstract class PokemonRepository {
  Future<PokemonDto> getPokemon();
}
