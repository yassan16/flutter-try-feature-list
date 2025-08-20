import 'package:flutter/material.dart';
import 'package:flutter_try_feature_list/routing.dart';
import 'package:go_router/go_router.dart';

/// 機能一覧画面
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
    final items = [
      {
        'text': '01_001 親子ウィジェットの再ビルド検証',
        'router': Routing.featuresScreenRouter + Routing.route_01_001,
      },
      {
        'text': '01_002 ListView-Paginationの実装サンプル',
        'router': Routing.featuresScreenRouter + Routing.route_01_002,
      },
      {
        'text': '02_001 Httpパッケージを使ったAPI呼び出し検証',
        'router': Routing.featuresScreenRouter + Routing.route_02_001,
      },
      {
        'text': '02_002 Dioパッケージを使ったAPI呼び出し検証',
        'router': Routing.featuresScreenRouter + Routing.route_02_002,
      },
      {
        'text': '04_001 Providerの再ビルド検証',
        'router': Routing.featuresScreenRouter + Routing.route_04_001,
      },
      {
        'text': '99_001 スクリーンショットの防止',
        'router': Routing.featuresScreenRouter + Routing.route_99_001,
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Features Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 2.2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return _buildFeatureCard(
              context,
              items[index]['text'] as String,
              items[index]['router'] as String,
            );
          },
        ),
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context, String text, String router) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.blue[50], // 見やすい青系の背景色
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          GoRouter.of(context).go(router);
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('パス： $router')));
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 12.0,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 180, // カード内での最大幅を指定
                minHeight: 40,
              ),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16, // 少し小さめで収まりやすく
                  color: Colors.blue[800], // 見やすい青色
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 3, // 3行まで表示、超えたら...で省略
              ),
            ),
          ),
        ),
      ),
    );
  }
}
