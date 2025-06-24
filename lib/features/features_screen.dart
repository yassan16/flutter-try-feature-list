import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturesScreen extends StatefulWidget {
  const FeaturesScreen({super.key});

  @override
  State<FeaturesScreen> createState() => _FeaturesScreenState();
}

class _FeaturesScreenState extends State<FeaturesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Features Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // ProviderVerificationScreen001へ遷移する処理
            GoRouter.of(context).go('/features/providerVerificationScreen001');

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Features Screen Tapped')),
            );
          },
          child: const Text('0001 Providerの検証', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
