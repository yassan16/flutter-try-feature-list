import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_bar_index_notifier.g.dart';

@riverpod
class BottomNavigationBarIndexNotifier
    extends _$BottomNavigationBarIndexNotifier {
  @override
  int build() => 0;

  void setIndex(int index) => state = index;
}
