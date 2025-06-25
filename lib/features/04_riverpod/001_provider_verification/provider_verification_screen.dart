import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/features/04_riverpod/001_provider_verification/notifier_list.dart';

class ProviderVerificationScreen001 extends ConsumerStatefulWidget {
  const ProviderVerificationScreen001({super.key});

  @override
  ConsumerState<ProviderVerificationScreen001> createState() =>
      _ProviderVerificationScreen001State();
}

class _ProviderVerificationScreen001State
    extends ConsumerState<ProviderVerificationScreen001> {
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
