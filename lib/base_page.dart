import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key, required this.child});
  final Widget child;

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  static const tabs = ['/a', '/b', '/c'];

  /// Tabのインデックスを取得する
  /// [location]はGoRouterStateのuri.toString()で取得できる
  int _locationToIndex(String location) {
    return tabs.indexWhere((path) => location.startsWith(path));
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _locationToIndex(
      GoRouterState.of(context).uri.toString(),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Demo Home Page'),
      ),
      body:
          currentIndex == 1
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('You have pushed the button this many times:'),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              )
              : widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'A'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'B'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'C'),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          context.go(tabs[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
