# 🔷 BuildContextとは？
簡単に言うと、

「現在のウィジェットが、ウィジェットツリーのどこにいるかを示すポインタ（参照）」

です。

## 🔸 例えるなら？
BuildContext は **地図アプリの現在地情報（GPS）**のようなものです。

* 現在地（どのWidgetか）
* どこに属しているか（親Widget）
* 近くに何があるか（InheritedWidgetなど）

などを把握するために使います。

## ✅ 何に使うのか？
### 1. 親ウィジェットにアクセス
例：Theme.of(context).  
→ このWidgetがどんなテーマ設定を使っているか取得できます。

```dart
final theme = Theme.of(context);
```
### 2. Navigatorを使った画面遷移
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const NextPage()),
);
```
→ `context` が必要なのは、今どの場所にいるかを元に、ナビゲーションのルートを作るため。

### 3. MediaQueryなど、InheritedWidget系の値取得
```dart
final width = MediaQuery.of(context).size.width;
```
→ 親から渡された情報を context を通して取りにいきます。

## 🔸 重要な注意点
❗ Widgetの build() メソッド外で context を使うとエラーになることがあります
* context は 一時的なもの。build() のタイミングでのみ正しい状態を保証します。
* 例えば initState() ではまだウィジェットツリーに組み込まれていないため、context を使うとクラッシュします。

## 🔚 まとめ
| 用途               | 説明                                           |
|--------------------|------------------------------------------------|
| 現在の位置取得     | 自分がウィジェットツリーのどこにいるか         |
| 上位ウィジェット参照 | Theme, MediaQuery, Navigatorなどを参照する     |
| 使える場所         | 主に `build()` メソッド内で使う                |
