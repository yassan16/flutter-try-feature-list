import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListviewBuilderScreen extends ConsumerStatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  ConsumerState<ListviewBuilderScreen> createState() =>
      _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends ConsumerState<ListviewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView.builder Sample')),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            subtitle: Text('This is item number $index'),
          );
        },
      ),
    );
  }
}
