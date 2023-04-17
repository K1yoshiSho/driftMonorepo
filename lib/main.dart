import 'dart:io';

import 'package:drift_melos_workspace/src/common/dependencies/injection_container.dart';
import 'package:drift_melos_workspace/src/presentation/components/scaffold_navbar.dart';
import 'package:drift_melos_workspace/src/presentation/features/main/home/home_screen.dart';
import 'package:drift_melos_workspace/src/presentation/features/main/test_screen.dart';
import 'package:drift_melos_workspace/src/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:window_manager/window_manager.dart';
part 'package:drift_melos_workspace/src/routes/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupIoc();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(800, 600),
    minimumSize: Size(400, 600),
    center: true,
    backgroundColor: Colors.white,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Drift Melos Workspace',
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: Colors.blueAccent, secondary: Colors.white, background: Colors.white),
        useMaterial3: true,
      ),
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}
