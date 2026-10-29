import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/app_router.dart';

/// Menú lateral de navegación.
class AppDrawer extends StatelessWidget {
  final String currentLocation;

  const AppDrawer({super.key, required this.currentLocation});

  void _goTo(BuildContext context, String route) {
    Navigator.pop(context); // cierra el drawer
    context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: scheme.primary),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'My Portfolio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            selected: currentLocation == AppRoutes.welcome,
            onTap: () => _goTo(context, AppRoutes.welcome),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Portfolio'),
            selected: currentLocation == AppRoutes.portfolio,
            onTap: () => _goTo(context, AppRoutes.portfolio),
          ),
        ],
      ),
    );
  }
}
