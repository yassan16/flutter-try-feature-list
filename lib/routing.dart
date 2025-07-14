import 'package:flutter/material.dart';
import 'package:flutter_try_feature_list/common/presentation/screens/base_screen.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/001_parent_child_widget_rebuild/parent_child_widget_rebuild_screen.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/001_http/presentation/http_screen.dart';
import 'package:flutter_try_feature_list/features/features_screen.dart';
import 'package:flutter_try_feature_list/mapbox/presentation/mapbox_screen.dart';
import 'package:flutter_try_feature_list/features/04_riverpod/001_provider_verification/provider_verification_screen.dart';
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
  // Features Branch
  static final String featuresScreenRouter = '/features';

  // 01_widget_tree
  static final String route_01 = '/01_widget_tree';
  static final String route_01_001 =
      '$route_01/001_parent_child_widget_rebuild';

  // 02_future_stream
  static final String route_02 = '/02_future_stream';
  static final String route_02_001 = '$route_02/001_http';
  static final String route_02_002 = '$route_02/002_dio';

  // 04_riverpod
  static final String route_04 = '/04_riverpod';
  static final String route_04_001 = '$route_04/001_providerVerification';

  // Mapbox Branch
  static final String bScreenRouter = '/b';

  // 予備 Branch
  static final String cScreenRouter = '/c';

  final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: featuresScreenRouter,
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
                path: featuresScreenRouter,
                pageBuilder:
                    (context, state) =>
                        const NoTransitionPage(child: FeaturesScreen()),
                routes: [
                  // 01_widget_tree
                  GoRoute(
                    path: route_01_001,
                    builder:
                        (context, state) => ParentChildWidgetRebuild001Screen(),
                  ),
                  // 02_future_stream
                  GoRoute(
                    path: route_02_001,
                    builder: (context, state) => HttpScreen(),
                  ),
                  // GoRoute(
                  //   path: route_02_002,
                  //   builder: (context, state) => DioScreen(),
                  // ),
                  // 04_riverpod
                  GoRoute(
                    path: route_04_001,
                    builder:
                        (context, state) => ProviderVerificationScreen001(),
                  ),
                ],
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
