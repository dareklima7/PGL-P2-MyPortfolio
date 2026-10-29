import 'package:flutter/material.dart';

/// Portfolio personal con pestañas (tabs) en lugar de botones,
/// como en el diseño.
class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          // Cabecera con la presentación
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24),
            color: scheme.primary,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundColor: scheme.secondary,
                  child: const Icon(Icons.person, size: 56, color: Colors.white),
                ),
                const SizedBox(height: 12),
                Text(
                  'Darek Lima',
                  style: textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Estudiante de 2º DAM',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          // Pestañas
          Material(
            color: scheme.primary,
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              indicatorColor: scheme.secondary,
              tabs: const [
                Tab(icon: Icon(Icons.info_outline), text: 'Sobre mí'),
                Tab(icon: Icon(Icons.school), text: 'Formación'),
                Tab(icon: Icon(Icons.code), text: 'Habilidades'),
              ],
            ),
          ),
          const Expanded(
            child: TabBarView(
              children: [
                _AboutTab(),
                _StudiesTab(),
                _SkillsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AboutTab extends StatelessWidget {
  const _AboutTab();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Text(
        'Tengo 19 años y estudio Desarrollo de Aplicaciones Multiplataforma. '
        'Me interesa crear aplicaciones móviles y trabajar con bases de datos. '
        'Hablo español e inglés.',
        style: TextStyle(fontSize: 16, height: 1.5),
      ),
    );
  }
}

class _StudiesTab extends StatelessWidget {
  const _StudiesTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Card(
          child: ListTile(
            leading: Icon(Icons.school),
            title: Text('2º Desarrollo de Aplicaciones Multiplataforma'),
            subtitle: Text('CPEIPS San Juan Bosco (Salesianos La Cuesta) · 2026-27'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.language),
            title: Text('Idiomas'),
            subtitle: Text('Español · Inglés'),
          ),
        ),
      ],
    );
  }
}

class _SkillsTab extends StatelessWidget {
  const _SkillsTab();

  static const _skills = ['Flutter', 'Dart', 'Java', 'JDBC', 'SQL', 'Git', 'GitHub'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [for (final s in _skills) Chip(label: Text(s))],
      ),
    );
  }
}
