import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const String route = '/settings';
  static const String path = '/settings';
  static const String name = 'Settings';
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>(debugLabel: path);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Settings Screen', style: TextStyle(fontSize: 24)),
            Padding(padding: EdgeInsets.all(4)),
            Padding(padding: EdgeInsets.all(4)),
          ],
        ),
      ),
    );
  }
}
