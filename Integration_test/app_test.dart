import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:vdkFlutterChat/main.dart' as app;
void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('Full app Test', (tester) async {
    app.main();
    tester.pumpAndSettle();
    final emailFromField = find.text('Username/Email');
    final passwordFromField = find.text('Password');
    final signInButton = find.byType(ElevatedButton).first;
    tester.enterText(emailFromField, 'Nimra');
    tester.enterText(passwordFromField, 'Nimra123');
    tester.tap(signInButton);
    tester.pumpAndSettle();
    });
  });
}