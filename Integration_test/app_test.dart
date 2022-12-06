import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:vdkFlutterChat/main.dart' as app;
void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('Full app Test', (tester) async {
    app.main();
    await tester.pumpAndSettle();
    final emailFromField = find.text('Username/Email');
    final passwordFromField = find.text('Password');
    final signInButton = find.byType(ElevatedButton).first;
    await tester.enterText(emailFromField, 'Nimra');
    await tester.enterText(passwordFromField, 'Nimra123');
    await tester.tap(signInButton);
    await tester.pumpAndSettle();
    });
  });
}