import 'package:flutter_test/flutter_test.dart';

import 'package:pgl_p2_myportfolio/main.dart';

void main() {
  testWidgets('Muestra la pantalla de bienvenida', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    expect(find.text('¡Bienvenido a Canarias!'), findsOneWidget);
  });
}
