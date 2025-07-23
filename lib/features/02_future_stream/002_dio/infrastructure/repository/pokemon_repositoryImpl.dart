import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/pokemon.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/pokemon_repository.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/dto/pokemon_dto.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/api_client/pokemon_api_client.dart';

class PokemonRepositoryimpl extends PokemonRepository {
  final PokemonApiClient service;
  PokemonRepositoryimpl(this.service);

  @override
  Future<Pokemon> getPokemon() async {
    final pokemonDto = await service.getPokemon();
    return pokemonDto.toEntity();
  }

  @override
  Future<Pokemon> getEvlovePokemon(int id) async {
    final pokemonDto = await service.getEvlovePokemon(id.toString());
    return pokemonDto.toEntity();
  }
}
