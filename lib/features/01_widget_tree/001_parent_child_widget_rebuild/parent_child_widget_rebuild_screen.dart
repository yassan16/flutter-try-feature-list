import 'package:flutter/material.dart';

class ParentChildWidgetRebuild001Screen extends StatefulWidget {
  const ParentChildWidgetRebuild001Screen({super.key});

  @override
  State<ParentChildWidgetRebuild001Screen> createState() =>
      _ParentChildWidgetRebuild001ScreenState();
}

class _ParentChildWidgetRebuild001ScreenState
    extends State<ParentChildWidgetRebuild001Screen> {
  int count = 0;

  void _increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("ParentWidget build"); // ← 観察ポイント
    return Scaffold(
      appBar: AppBar(title: const Text('親子ウィジェットの再ビルド検証')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: _increment, child: Text('増やす')),
          Text('Count: $count'),
          ChildWidget(), // 子ウィジェット
          const ChildWidget(), // 再ビルドされない
        ],
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print("ChildWidget build"); // ← 観察ポイント
    return Text('これは子ウィジェットです');
  }
}
