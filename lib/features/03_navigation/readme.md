# ナビゲーションと画面遷移の仕組み（Navigator & go_router）
Flutterでは複数の画面（ページ）を扱うアプリでナビゲーションの管理が必要です。
ここでは、旧来のNavigatorと、推奨されるgo_routerの使い方・考え方を理解しましょう。

## ✅ 1. Navigator 1.0（基本的な仕組み）
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const SecondScreen()),
);
```
* スタック構造：push() で積み上げ、pop() で戻る
* context を使うので、グローバルな遷移は少し面倒

## ✅ 2. Navigator 2.0（ルーティングの宣言型管理）
Flutter 2以降から正式導入。go_routerはこれをラップして使いやすくしたもの。

## ✅ 3. go_router（推奨ルーティングライブラリ）
🔹 導入
```yaml
dependencies:
  go_router: ^15.2.1
```
🔹 基本構成
```dart
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/second',
      builder: (context, state) => const SecondScreen(),
    ),
  ],
);
```
🔹 MaterialAppに適用
```dart
MaterialApp.router(
  routerConfig: _router,
)
```
🔹 画面遷移
```dart
context.go('/second');     // 画面を置き換え
context.push('/second');   // 現在の画面の上に積み上げ
```
## ✅ 4. ShellRoute と BottomNavigationBar
複数の画面で`共通UI（BottomNavigationBarなど）`を持たせるときに使います。

```dart
ShellRoute(
  builder: (context, state, child) {
    return ScaffoldWithBottomNav(child: child);
  },
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
```
* ShellRouteの child に各画面が挿入される
* ScaffoldWithBottomNav は共通の Scaffold として BottomNavigationBar を保持

## ✅ 5. 状態保持付きのナビゲーション
各画面の状態を維持したい場合は以下の工夫が必要です：
* ShellRoute + IndexedStack
* Riverpod等で状態を外部管理（ViewModel/Controller）

## 🔸 まとめ：ナビゲーション選びの指針
| 機能                         | Navigator 1.0      | go_router              |
|----------------------------|--------------------|------------------------|
| 明示的なスタック操作         | ✅                 | ✅                     |
| 宣言的なルーティング         | ❌                 | ✅                     |
| Deep Link対応              | ❌                 | ✅                     |
| BottomNavと連携            | 工夫が必要         | ✅（ShellRoute）        |
| 状態の分離・管理のしやすさ | △                 | ✅                     |
