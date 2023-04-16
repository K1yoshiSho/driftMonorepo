import 'package:drift_melos_workspace/src/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String route = '/home';
  static const String path = '/home';
  static const String name = 'Home';
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>(debugLabel: path);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome!'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Home Screen', style: TextStyle(fontSize: 24)),
            const Padding(padding: EdgeInsets.all(4)),
            TextButton(
              onPressed: () {
                context.go(DetailsScreen.path);
              },
              child: const Text('View details'),
            ),
            const Padding(padding: EdgeInsets.all(4)),
          ],
        ),
      ),
    );
  }
}
