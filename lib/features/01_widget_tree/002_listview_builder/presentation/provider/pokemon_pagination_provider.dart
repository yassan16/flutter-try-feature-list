import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/common/infrastructure/http/dio/dio_client.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/aplication/pokemon_pagination_usecase.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/domain/pokemon_pagination_repository.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/infrastructure/api_client/pokemon_pagination_api_client.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/infrastructure/repository/pokemon_pagination_repositoryimpl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_pagination_provider.g.dart';

/// 各層の依存関係を管理するProvider
@riverpod
Dio dio(Ref ref) => DioClient().dio;

@riverpod
PokemonPaginationApiClient pokemonPaginationApiClient(Ref ref) =>
    PokemonPaginationApiClient(ref.watch(dioProvider));

@riverpod
PokemonPaginationRepository pokemonPaginationRepositoryimpl(Ref ref) =>
    PokemonPaginationRepositoryimpl(
      ref.watch(pokemonPaginationApiClientProvider),
    );

@riverpod
PokemonPaginationUsecase pokemonPaginationUsecase(Ref ref) =>
    PokemonPaginationUsecase(
      ref.watch(pokemonPaginationRepositoryimplProvider),
    );
