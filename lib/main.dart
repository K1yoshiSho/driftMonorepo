import 'package:drift_melos_workspace/src/common/dependencies/injection_container.dart';
import 'package:drift_melos_workspace/src/presentation/components/scaffold_navbar.dart';
import 'package:drift_melos_workspace/src/presentation/features/main/home/home_screen.dart';
import 'package:drift_melos_workspace/src/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
part 'package:drift_melos_workspace/src/routes/go_router.dart';

Future<void> main() async {
  await setupIoc();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Drift Melos Workspace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.blueAccent, secondary: Colors.white),
        useMaterial3: true,
      ),
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}
