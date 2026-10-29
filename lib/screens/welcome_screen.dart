import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/app_router.dart';

/// Pantalla de bienvenida: imagen de fondo + mensaje.
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/welcome_bg.jpg',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stack) =>
              Container(color: scheme.primary),
        ),
        Container(color: Colors.black45),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.landscape, color: Colors.white, size: 64),
                const SizedBox(height: 16),
                const Text(
                  '¡Bienvenido a Canarias!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Descubre los lugares de interés de las islas',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                const SizedBox(height: 32),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: scheme.secondary,
                    foregroundColor: Colors.black87,
                  ),
                  onPressed: () => context.go(AppRoutes.portfolio),
                  icon: const Icon(Icons.person),
                  label: const Text('Ver mi portfolio'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
