import 'package:dio/dio.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/failure.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/pokemon.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/pokemon_repository.dart';
import 'package:flutter_try_feature_list/common/infrastructure/dto/pokemon/pokemon_dto.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/api_client/pokemon_api_client.dart';
import 'package:fpdart/fpdart.dart';

class PokemonRepositoryimpl extends PokemonRepository {
  final PokemonApiClient service;
  PokemonRepositoryimpl(this.service);

  @override
  Future<Pokemon> getPokemon() async {
    final pokemonDto = await service.getPokemon();
    return pokemonDto.toEntity();
  }

  @override
  Future<Result<Pokemon>> getEvlovePokemon(int id) async {
    try {
      final pokemonDto = await service.getEvlovePokemon(id.toString());
      return Right(pokemonDto.toEntity());
    } on DioException catch (e) {
      print('DioExceptionをキャッチ: ${e.message}');
      if (e.response?.statusCode == 404) {
        final data = e.response?.data;
        final message =
            (data != null && data.toString().isNotEmpty)
                ? data.toString()
                : 'Not Found';
        return Left(NotFoundFailure(message));
      } else {
        return Left(
          NetworkFailure('Failed to fetch evolved Pokémon: ${e.message}'),
        );
      }
    }
  }
}
