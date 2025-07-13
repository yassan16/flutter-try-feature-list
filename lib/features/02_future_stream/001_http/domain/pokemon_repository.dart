import 'package:flutter_try_feature_list/features/02_future_stream/001_http/infrastructure/dto/pokemon_dto.dart';

abstract class PokemonRepository {
  Future<PokemonDto> getPokemon();
}
