import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({required this.label, required this.detailsPath, this.detailsPath2, Key? key}) : super(key: key);

  final String label;
  final String detailsPath;
  final String? detailsPath2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab root - $label'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Screen $label', style: Theme.of(context).textTheme.titleLarge),
            const Padding(padding: EdgeInsets.all(4)),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go(detailsPath);
              },
              child: const Text('View details'),
            ),
            const Padding(padding: EdgeInsets.all(4)),
            if (detailsPath2 != null)
              TextButton(
                onPressed: () {
                  GoRouter.of(context).go(detailsPath2!);
                },
                child: const Text('View more details'),
              ),
          ],
        ),
      ),
    );
  }
}
