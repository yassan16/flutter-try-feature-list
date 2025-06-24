# Provierの再ビルド検証
サンプルコードを用いて検証する。

## 疑問：なぜBNotifierのbuild()が、ScreenAのbuild()より先に呼ばれるのか？

### 理由
* Riverpodは依存関係のあるProviderの再計算を優先して行うため
* aNotifierProviderのstateが変わると、それをwatchしているBNotifier（bNotifierProvider）のbuild()が「まず」呼ばれます。
* その後、ScreenAのbuild()が呼ばれます（ConsumerWidgetやConsumerStatefulWidgetの場合、ref.watchしているproviderの値が変わった後に再buildされる）。

### イメージ
* setIndex()でANotifierのstateが変わる
* 依存しているBNotifierのbuild()が即座に再実行される（aNotifierProviderの新しい値を取得するため）
* その後、Widgetツリー（ScreenAなど）が再buildされる

### 動作ログ
```
flutter: 【ScreenA】buildが、呼ばれました
flutter: 【B_Notifier】buildが、呼び出された
flutter: 【A_Notifier】buildが、呼び出された
flutter: 【B_Notifier】a_nofifierが、watchされた: aState = 0
flutter: 【ScreenA】B_Notifierの値: 100
flutter: ===========================================
flutter: 【A_Notifier】setIndexが、呼び出された
flutter: 【A_Notifier】stateが、更新された: 1
flutter: 【B_Notifier】buildが、呼び出された
flutter: 【B_Notifier】a_nofifierが、watchされた: aState = 1
flutter: 【ScreenA】buildが、呼ばれました
flutter: 【ScreenA】B_Notifierの値: 101
flutter: ===========================================
```
