import 'package:go_router/go_router.dart';

import '../screens/portfolio_screen.dart';
import '../screens/welcome_screen.dart';
import '../widgets/app_shell.dart';

/// Rutas de la app.
class AppRoutes {
  static const welcome = '/';
  static const portfolio = '/portfolio';
}

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.welcome,
  routes: [
    // El ShellRoute define una sola vez el Scaffold con AppBar y Drawer;
    // solo cambia el contenido (child) al navegar.
    ShellRoute(
      builder: (context, state, child) =>
          AppShell(location: state.uri.path, child: child),
      routes: [
        GoRoute(
          path: AppRoutes.welcome,
          name: 'welcome',
          builder: (context, state) => const WelcomeScreen(),
        ),
        GoRoute(
          path: AppRoutes.portfolio,
          name: 'portfolio',
          builder: (context, state) => const PortfolioScreen(),
        ),
      ],
    ),
  ],
);
