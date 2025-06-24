import 'package:flutter/material.dart';
import 'package:flutter_try_feature_list/common/presentation/screens/base_screen.dart';
import 'package:flutter_try_feature_list/mapbox/presentation/mapbox_screen.dart';
import 'package:flutter_try_feature_list/features/001_a/screnn_a.dart';
import 'package:flutter_try_feature_list/common/presentation/screens/screnn_c.dart';
import 'package:go_router/go_router.dart';

// Navigator : 画面のスタック（履歴）を管理するクラス
// NavigatorState : Navigator の状態やコントローラー
// 各 Branch の Navigatorの状態をグローバルに管理する
final rootNavigatorKey = GlobalKey<NavigatorState>();
final featuresNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'features');
final mapboxNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'mapbox');
final spareNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'spare');

/// アプリのルーティングを管理するクラス
class Routing {
  // ルーティングのパスを定義
  static final String aScreenRouter = '/a';
  static final String bScreenRouter = '/b';
  static final String cScreenRouter = '/c';

  final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: aScreenRouter,
    routes: [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state, navigationShell) {
          return BaseScreen(navigationShell: navigationShell);
        },
        branches: [
          // Features Branch
          StatefulShellBranch(
            navigatorKey: featuresNavigatorKey,
            routes: [
              GoRoute(
                path: aScreenRouter,
                pageBuilder:
                    (context, state) =>
                        const NoTransitionPage(child: ScreenA()),
              ),
            ],
          ),
          // Mapbox Branch
          StatefulShellBranch(
            navigatorKey: mapboxNavigatorKey,
            routes: [
              GoRoute(
                path: bScreenRouter,
                pageBuilder:
                    (context, state) =>
                        const NoTransitionPage(child: MapboxScreen()),
              ),
            ],
          ),
          // 予備 Branch
          StatefulShellBranch(
            navigatorKey: spareNavigatorKey,
            routes: [
              GoRoute(
                path: cScreenRouter,
                pageBuilder:
                    (context, state) =>
                        const NoTransitionPage(child: ScreenC()),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
