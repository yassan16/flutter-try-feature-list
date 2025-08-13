import 'package:flutter_try_feature_list/common/infrastructure/dto/pokeapi/utility/named_api_resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
abstract class PaginationDto with _$PaginationDto {
  factory PaginationDto({
    required int count,
    required String? next,
    required String? previous,
    required List<NamedAPIResource>? results,
  }) = _PaginationDto;

  factory PaginationDto.fromJson(Map<String, dynamic> json) =>
      _$PaginationDtoFromJson(json);
}
