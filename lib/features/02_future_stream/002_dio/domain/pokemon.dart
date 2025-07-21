/// 外部依存を持たない!!
///
/// ポケモンドメインモデル
class Pokemon {
  final int id;
  final String name;
  final String url;
  final int? nextEvolutionId; // 進化先のIDを保持

  Pokemon({
    required this.id,
    required this.name,
    required this.url,
    this.nextEvolutionId,
  });

  bool canEvolve() => nextEvolutionId != null;
}
