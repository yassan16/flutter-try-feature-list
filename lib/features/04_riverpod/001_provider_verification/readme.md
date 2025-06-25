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


## 疑問：なぜ2回目に表示されるProviderVerificationScreen001で依存しているProviderは、初期化されるのか？
ProviderVerificationScreen001 → BaseScreen → ProviderVerificationScreen001と遷移した時

### 理由
「ProviderVerificationScreen001」が、Navigatorのスタックから削除されたタイミングで、その画面でのみ使われていたProviderもDispose（破棄）されるため。

* 画面がスタックから消える＝その画面でしか参照されていないProviderもDisposeされる
* 再度画面を開く＝Providerも再初期化される

### 詳細
1. RiverpodのProviderスコープ
  * RiverpodのProviderは、参照しているWidgetがツリー上から消えると自動的にDisposeされる（デフォルトのProviderScopeの挙動）。
  * 画面遷移でProviderVerificationScreen001がNavigatorのスタックから外れると、その画面でしか使われていないProviderもDisposeされる。

2. GoRouterとNavigatorの挙動
  * GoRouteで画面遷移すると、前の画面（ProviderVerificationScreen001）はNavigatorのスタックから削除される（popやpushReplacementなど）。
  * そのため、画面に依存しているProviderも破棄される。

3. 再度遷移した場合
  * 再びProviderVerificationScreen001に遷移すると、その画面で使われているProviderは新しく初期化される。
