import 'package:flutter_try_feature_list/common/infrastructure/dto/pokeapi/pokemon/pokemon_dto.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/001_http/domain/pokemon_repository.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/001_http/infrastructure/service/pokemon_service.dart';

class PokemonRepositoryimpl extends PokemonRepository {
  final PokemonService service;
  PokemonRepositoryimpl(this.service);

  @override
  Future<PokemonDto> getPokemon() async {
    final pokemonDto = await service.getPokemon();
    return pokemonDto;
  }
}
