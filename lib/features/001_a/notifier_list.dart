import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifier_list.g.dart';

@riverpod
class ANotifier extends _$ANotifier {
  @override
  int build() {
    print("【A_Notifier】buildが、呼び出された");
    return 0;
  }

  void setIndex() {
    print("【A_Notifier】setIndexが、呼び出された");

    state++;
    print("【A_Notifier】stateが、更新された: $state");
  }
}

@riverpod
class BNotifier extends _$BNotifier {
  @override
  int build() {
    print("【B_Notifier】buildが、呼び出された");

    final aState = ref.watch(aNotifierProvider);
    print("【B_Notifier】a_nofifierが、watchされた: aState = $aState");

    return aState + 100;
  }

  /// 使用してない
  void setIndex() {
    print("【B_Notifier】setIndexが、呼び出された");

    state++;
    print("【B_Notifier】stateが、更新されました: $state");
  }
}
