import 'package:freezed_annotation/freezed_annotation.dart';

part 'named_api_resource.freezed.dart';
part 'named_api_resource.g.dart';

@freezed
abstract class NamedAPIResource with _$NamedAPIResource {
  factory NamedAPIResource({required String? name, required String? url}) =
      _NamedAPIResource;

  factory NamedAPIResource.fromJson(Map<String, dynamic> json) =>
      _$NamedAPIResourceFromJson(json);
}
