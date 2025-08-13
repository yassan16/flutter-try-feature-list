import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/domain/pokemon_pagination.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/domain/pokemon_pagination_repository.dart';

class PokemonPaginationUsecase {
  final PokemonPaginationRepository _repository;

  PokemonPaginationUsecase(this._repository);

  /// ポケモンのリストを取得するメソッド
  Future<PokemonPaginationEntitiy> execute(String? nextUrl) async {
    return await _repository.fetchPokemonList(
      offset: nextUrl != null ? _getOffsetFromUrl(nextUrl) : 0,
      limit: 20,
    );
  }

  /// 次のページのURLからオフセットを取得するヘルパーメソッド
  int _getOffsetFromUrl(String url) {
    final uri = Uri.parse(url);
    final queryParams = uri.queryParameters;
    return int.tryParse(queryParams['offset'] ?? '0') ?? 0;
  }
}
