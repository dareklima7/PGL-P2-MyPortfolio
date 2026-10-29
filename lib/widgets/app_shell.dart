import 'package:flutter/material.dart';

import '../router/app_router.dart';
import 'app_drawer.dart';

/// Estructura común de todas las pantallas: AppBar + Drawer + contenido.
class AppShell extends StatelessWidget {
  final String location;
  final Widget child;

  const AppShell({super.key, required this.location, required this.child});

  String get _title {
    switch (location) {
      case AppRoutes.portfolio:
        return 'Portfolio';
      default:
        return 'Inicio';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      drawer: AppDrawer(currentLocation: location),
      body: SafeArea(child: child),
    );
  }
}
