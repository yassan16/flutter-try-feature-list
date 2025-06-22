import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_try_feature_list/common/presentation/controllers/bottom_navigation_bar_index_notifier.dart';
import 'package:go_router/go_router.dart';

class BaseScreen extends ConsumerStatefulWidget {
  const BaseScreen({super.key, required this.child});
  final Widget child;

  @override
  ConsumerState<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends ConsumerState<BaseScreen> {
  static const tabs = ['/a', '/b', '/c'];

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBarIndex = ref.watch(
      bottomNavigationBarIndexNotifierProvider,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Demo Home Page'),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavigationBarIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          ref
              .read(bottomNavigationBarIndexNotifierProvider.notifier)
              .setIndex(index);
          context.go(tabs[index]);
        },
        items: <BottomNavigationBarItem>[
          // Features
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Features',
          ),
          // Mapbox
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/ic_map.svg',
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                bottomNavigationBarIndex == 1
                    ? Colors.amber[800]!
                    : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Map',
          ),
          // 予備
          const BottomNavigationBarItem(icon: Icon(Icons.school), label: 'C'),
        ],
      ),
    );
  }
}
