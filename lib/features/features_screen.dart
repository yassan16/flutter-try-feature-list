import 'package:flutter/material.dart';
import 'package:flutter_try_feature_list/routing.dart';
import 'package:go_router/go_router.dart';

class FeaturesScreen extends StatefulWidget {
  const FeaturesScreen({super.key});

  @override
  State<FeaturesScreen> createState() => _FeaturesScreenState();
}

class _FeaturesScreenState extends State<FeaturesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Features Screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 01_001 親子ウィジェットの再ビルド検証
          ElevatedButton(
            onPressed: () {
              String router =
                  Routing.featuresScreenRouter + Routing.route_01_001;
              GoRouter.of(context).go(router);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('パス： $router')));
            },
            child: const Text(
              '01_001 親子ウィジェットの再ビルド検証',
              style: TextStyle(fontSize: 20),
            ),
          ),
          // 02_001 Httpパッケージを使ったAPI呼び出し検証
          ElevatedButton(
            onPressed: () {
              String router =
                  Routing.featuresScreenRouter + Routing.route_02_001;
              GoRouter.of(context).go(router);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('パス： $router')));
            },
            child: const Text(
              '02_001 Httpパッケージを使ったAPI呼び出し検証',
              style: TextStyle(fontSize: 20),
            ),
          ),
          // 04_001 Providerの再ビルド検証
          ElevatedButton(
            onPressed: () {
              String router =
                  Routing.featuresScreenRouter + Routing.route_04_001;
              GoRouter.of(context).go(router);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('パス： $router')));
            },
            child: const Text(
              '04_001 Providerの再ビルド検証',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
