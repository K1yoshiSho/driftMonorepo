part of 'package:drift_melos_workspace/main.dart';

final List<ScaffoldWithNavBarTabItem> tabs = <ScaffoldWithNavBarTabItem>[
  ScaffoldWithNavBarTabItem(
    rootRoutePath: HomeScreen.path,
    navigatorKey: HomeScreen.navigatorKey,
    icon: const Icon(Icons.home_rounded),
    label: HomeScreen.name,
  ),
  ScaffoldWithNavBarTabItem(
    rootRoutePath: SettingsScreen.path,
    navigatorKey: SettingsScreen.navigatorKey,
    icon: const Icon(Icons.settings_rounded),
    label: SettingsScreen.name,
  ),
];

final GoRouter _router = GoRouter(
  initialLocation: HomeScreen.path,
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    BottomTabBarShellRoute(
      tabs: tabs,
      routes: <RouteBase>[
        GoRoute(
          path: HomeScreen.route,
          name: HomeScreen.name,
          builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: DetailsScreen.route,
              name: DetailsScreen.name,
              builder: (BuildContext context, GoRouterState state) => const DetailsScreen(label: 'A'),
            ),
          ],
        ),
        GoRoute(
          path: SettingsScreen.route,
          name: SettingsScreen.name,
          builder: (BuildContext context, GoRouterState state) => const SettingsScreen(),
        ),
      ],
    ),
  ],
);
