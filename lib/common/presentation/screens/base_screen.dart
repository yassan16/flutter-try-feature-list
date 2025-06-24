import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

/// 各 Branch の ベースとなる画面
class BaseScreen extends ConsumerStatefulWidget {
  const BaseScreen({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends ConsumerState<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    // 「widget.」を毎回つけるのは冗長なので、変数に代入
    final navigationShell = widget.navigationShell;

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          // Features
          const NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Features',
          ),
          // Mapbox
          NavigationDestination(
            icon: SvgPicture.asset(
              'assets/icons/ic_map.svg',
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            label: 'Mapbox',
          ),
          // 予備
          const NavigationDestination(
            icon: Icon(Icons.inventory_2),
            label: 'XXX',
          ),
        ],
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
