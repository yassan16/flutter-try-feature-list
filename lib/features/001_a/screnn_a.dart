import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/features/001_a/notifier_list.dart';

class ScreenA extends ConsumerStatefulWidget {
  const ScreenA({super.key});

  @override
  ConsumerState<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends ConsumerState<ScreenA> {
  @override
  Widget build(BuildContext context) {
    print("【ScreenA】buildが、呼ばれました");

    final bState = ref.watch(bNotifierProvider);
    print("【ScreenA】B_Notifierの値: $bState");
    print("===========================================");

    return Scaffold(
      appBar: AppBar(title: const Text("Providerの依存関係の確認")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("B_Notifierが、A_Notifierに依存している"),
            const SizedBox(height: 20),
            Text("A_Notifierの値: ${ref.read(aNotifierProvider)}"),
            Text("B_Notifierの値: $bState"),
            ElevatedButton(
              onPressed: () {
                ref.read(aNotifierProvider.notifier).setIndex();
              },
              child: const Text("A_Notifierの値を更新"),
            ),
          ],
        ),
      ),
    );
  }
}
