import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/dto/pokemon_dto.dart';

abstract class PokemonRepository {
  Future<PokemonDto> getPokemon();
}
