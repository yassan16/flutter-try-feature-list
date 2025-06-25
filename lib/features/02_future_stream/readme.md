# 非同期処理と状態更新（Future / async / await の理解）


### 🔹 非同期処理とは？
Flutter では、時間がかかる処理（例：API通信、DBアクセス、ファイル読み書きなど）を **「非同期」**で実行します。

なぜなら、UIスレッドをブロックすると、アプリがフリーズしてしまうからです。

### 🔹 Dart の非同期の基本構文
### ✅ Future（未来の値）を返す処理
```dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'データ取得完了';
}
```
### ✅ 呼び出し側
```dart
void main() async {
  String data = await fetchData();
  print(data); // → 'データ取得完了'
}
```

### 🔹 UIに非同期の結果を反映させるには？
Flutter で UI に非同期処理の結果を反映するには、主に 3 つの方法があります。

### ✅ 1. FutureBuilder を使う
```dart
FutureBuilder<String>(
  future: fetchData(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    } else if (snapshot.hasError) {
      return Text('エラー発生: ${snapshot.error}');
    } else {
      return Text('結果: ${snapshot.data}');
    }
  },
);
```
* 非同期処理中 → ローディング表示
* 結果取得後 → UI更新
* エラー時 → エラー表示

### ✅ 2. StatefulWidget + setState()
```dart
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? _result;

  @override
  void initState() {
    super.initState();
    fetchData().then((value) {
      setState(() {
        _result = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(_result ?? '読み込み中...');
  }
}
```
* setState() を呼ぶと再描画され、_result が更新される

### ✅ 3. Riverpod の非同期対応（AsyncValue）
```dart
@riverpod
Future<String> fetchData(FetchDataRef ref) async {
  await Future.delayed(Duration(seconds: 2));
  return 'データ取得完了';
}
```
```dart
final result = ref.watch(fetchDataProvider);

return result.when(
  data: (value) => Text(value),
  loading: () => CircularProgressIndicator(),
  error: (e, _) => Text('エラー: $e'),
);
```
* AsyncValue を利用すると、非同期の状態（読み込み中・成功・失敗）を分かりやすく管理できる。

### 🔹 補足：Future<void> の使いどころ
* 結果を返す必要がない非同期処理に使います。
    * 例：ボタンを押して DB に保存 → 結果は UI に反映しない
* await は可能（結果がないだけ）

### ✅ まとめ

| 方法 | 特徴 |
| ---- | ---- |
| FutureBuilder | 小規模な非同期UIに便利。1回の読み込みなど |
| setState()	 | 直接状態を管理する。やや手動感あり |
| Riverpod AsyncValue | 非同期の状態管理に強い。画面の再構築も自動
 |