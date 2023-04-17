import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  static const String route = 'test';
  static const String path = '/home/details/test';
  static const String name = 'Test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text('Test Screen', style: TextStyle(fontSize: 24)),
            Padding(padding: EdgeInsets.all(4)),
            Padding(padding: EdgeInsets.all(4)),
          ],
        ),
      ),
    );
  }
}
