# 概要
Flutteのレベルアップをするために、基礎やいろんな機能を試すリポジトリ。


## スキルアップ手順

Flutterでスキルアップしていくには、以下のように段階的かつ体系的に理解を深めていくことが重要です。
以下に「重要トピック」と「習得すべき理由・ポイント」を整理して解説します。

### 🔰 基礎編（初心者〜中級者）
まずはFlutterアプリの基礎構造をしっかり固める段階です。

### 1. ウィジェットツリーと状態管理の基本
StatefulWidget / StatelessWidget の違い

ツリー構造（ネスト）と再ビルドの仕組み

BuildContextの扱い方

🧠 ポイント：なぜ context から Navigator や Theme にアクセスできるのかを理解すること。

### 2. 非同期処理（Future / Stream）
Future, async / await, then, FutureBuilder

Stream / StreamBuilder（リスト更新やWebSocketなどで使う）

🧠 ポイント：非同期処理がUI更新とどう関係するかを理解しておく。

### 3. ナビゲーション
Navigator.push / pop

MaterialPageRoute / NamedRoute

go_router（最近の主流）

🧠 ポイント：Navigator 1.0と2.0 (go_router)の違いを知っておくとベター。

### 🧩 中級編（アプリを設計できるように）
### 4. 状態管理（Riverpodなど）
Provider / Riverpod / Bloc / Cubitなどの違いと選び方

アプリケーションの状態の責務の分離（UI ↔ ロジック）

🧠 ポイント：どの状態をどこで持つべきかが設計の肝になります。

### 5. アーキテクチャ
オニオンアーキテクチャ / Clean Architecture

UseCase / Repository パターン

DI（依存性注入）とProviderの役割

🧠 ポイント：「ControllerがなぜRepositoryを使うか」が説明できるようになると◎

### 6. データベースと永続化
sqflite, shared_preferences, hive, drift

データ取得→モデル変換→表示の流れ

🧠 ポイント：Model ⇔ Map ⇔ JSON ⇔ DB の流れを自動生成（freezed, json_serializable）で扱う方法も。

### 🚀 上級編（実務・複雑なアプリに対応）
### 7. テスト
Widget Test, Unit Test, Integration Test

ProviderやRiverpodのモック、DIの活用

🧠 ポイント：疎結合な設計（Testしやすさ）のために、テストを前提とした構成力が重要。

### 8. パフォーマンス最適化
RepaintBoundary, const の活用

build() がどれだけ呼ばれているかを見る方法

Flutter DevToolsの使い方

### 9. Flutter SDK / プラットフォーム連携
Android / iOSのネイティブ連携（MethodChannel）

Firebase連携（auth, firestore, messaging）

パッケージ管理（pubspec.yaml）とバージョン管理（flutter versionなど）

### 10. CI/CDやビルド管理
flutter build 系コマンド

dart-define, .env, flavor の活用

GitHub Actions / Codemagic などでの自動化

### ✅ 学習ステップまとめ（順番）
1. ウィジェットツリーと基本Widget
2. 非同期処理と状態更新
3. Navigatorと画面遷移
4. 状態管理（Provider, Riverpodなど）
5. DBやAPIとの連携
6. アーキテクチャ・設計力の習得
7. テスト・パフォーマンス・CI/CDなど運用面の強化

x. ライフサイクル(メモ)
| メソッド名 | 説明 |
| ---- | ---- |
| initState() | 小規模な非同期UIに便利。1回の読み込みなど |
| didChangeDependencies() | 直接状態を管理する。やや手動感あり |
| build() | 再描画ごとに呼ばれる。UIを定義する。|
| setState() | 呼び出すとbuild()が再実行されてUIが更新される。|
| dispose() | 	破棄されるときに呼ばれる。ControllerやListenerの解放に使う。|
