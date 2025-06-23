import 'package:flutter_try_feature_list/common/presentation/screens/base_screen.dart';
import 'package:flutter_try_feature_list/mapbox/presentation/mapbox_screen.dart';
import 'package:flutter_try_feature_list/features/presentation/screnn_a.dart';
import 'package:flutter_try_feature_list/common/presentation/screens/screnn_c.dart';
import 'package:go_router/go_router.dart';

/// アプリのルーティングを管理するクラス
class Routing {
  final router = GoRouter(
    initialLocation: '/a',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return BaseScreen(child: child);
        },
        routes: [
          GoRoute(
            path: '/a',
            pageBuilder:
                (context, state) => const NoTransitionPage(child: ScreenA()),
          ),
          GoRoute(
            path: '/b',
            pageBuilder:
                (context, state) =>
                    const NoTransitionPage(child: MapboxScreen()),
          ),
          GoRoute(
            path: '/c',
            pageBuilder:
                (context, state) => const NoTransitionPage(child: ScreenC()),
          ),
        ],
      ),
    ],
  );
}
