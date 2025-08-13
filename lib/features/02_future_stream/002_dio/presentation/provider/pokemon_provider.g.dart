// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'eab56cd7434d67a716dcccd36ba4369ddc834064';

/// 各層の依存関係を管理するProvider
///
/// Copied from [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$pokemonServiceHash() => r'47b869faa484eeb759dd32ce4153b50ce3a151e0';

/// See also [pokemonService].
@ProviderFor(pokemonService)
final pokemonServiceProvider = AutoDisposeProvider<PokemonApiClient>.internal(
  pokemonService,
  name: r'pokemonServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$pokemonServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PokemonServiceRef = AutoDisposeProviderRef<PokemonApiClient>;
String _$pokemonRepositoryimplHash() =>
    r'445fe6d6f3b5d720022d88b1006d88cfe3eadb05';

/// See also [pokemonRepositoryimpl].
@ProviderFor(pokemonRepositoryimpl)
final pokemonRepositoryimplProvider =
    AutoDisposeProvider<PokemonRepositoryimpl>.internal(
      pokemonRepositoryimpl,
      name: r'pokemonRepositoryimplProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$pokemonRepositoryimplHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PokemonRepositoryimplRef =
    AutoDisposeProviderRef<PokemonRepositoryimpl>;
String _$evolvePokemonUsecaseHash() =>
    r'2d52f6e4fe304b0eb69fd716eca089cfe0fa7ebb';

/// See also [evolvePokemonUsecase].
@ProviderFor(evolvePokemonUsecase)
final evolvePokemonUsecaseProvider =
    AutoDisposeProvider<EvolvePokemonUsecase>.internal(
      evolvePokemonUsecase,
      name: r'evolvePokemonUsecaseProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$evolvePokemonUsecaseHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef EvolvePokemonUsecaseRef = AutoDisposeProviderRef<EvolvePokemonUsecase>;
String _$getPokemonUsecaseHash() => r'976389be5545181c8a5f8ab88ff5a398b2fa7bdb';

/// See also [getPokemonUsecase].
@ProviderFor(getPokemonUsecase)
final getPokemonUsecaseProvider =
    AutoDisposeProvider<GetPokemonUsecase>.internal(
      getPokemonUsecase,
      name: r'getPokemonUsecaseProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$getPokemonUsecaseHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetPokemonUsecaseRef = AutoDisposeProviderRef<GetPokemonUsecase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
