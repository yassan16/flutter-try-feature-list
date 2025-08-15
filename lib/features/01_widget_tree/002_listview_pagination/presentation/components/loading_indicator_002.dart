import 'package:flutter/material.dart';

/// ローディングインジケーター
class LoadingIndicator002 extends StatelessWidget {
  const LoadingIndicator002({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color.alphaBlend(
              Colors.lightBlueAccent.withAlpha((255 * 0.2).toInt()),
              Colors.white,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(width: 12),
              Text(
                '読み込み中...',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
