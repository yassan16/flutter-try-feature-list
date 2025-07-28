import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/application/evolve_pokemon_usecase_provider.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/application/get_pokemon_usecase.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/dio/dio_client.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/repository/pokemon_repository_impl.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/api_client/pokemon_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_provider.g.dart';

/// 各層の依存関係を管理するProvider
@riverpod
Dio dio(Ref ref) => DioClient().dio;

@riverpod
PokemonApiClient pokemonService(Ref ref) =>
    PokemonApiClient(ref.watch(dioProvider));

@riverpod
PokemonRepositoryimpl pokemonRepositoryimpl(Ref ref) =>
    PokemonRepositoryimpl(ref.watch(pokemonServiceProvider));

@riverpod
EvolvePokemonUsecase evolvePokemonUsecase(Ref ref) =>
    EvolvePokemonUsecase(ref.watch(pokemonRepositoryimplProvider));

@riverpod
GetPokemonUsecase getPokemonUsecase(Ref ref) =>
    GetPokemonUsecase(ref.watch(pokemonRepositoryimplProvider));
