import 'package:flutter/material.dart';

class PreventScreenshotScreen99001 extends StatefulWidget {
  const PreventScreenshotScreen99001({super.key});

  @override
  PreventScreenshotScreen99001State createState() =>
      PreventScreenshotScreen99001State();
}

class PreventScreenshotScreen99001State
    extends State<PreventScreenshotScreen99001> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prevent Screenshot')),
      body: Center(
        child: Text(
          'This screen prevents screenshots.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
