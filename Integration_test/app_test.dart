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

    final emailFromField = find.byType(TextFormField).first;
    final passwordFromField = find.byType(TextFormField).last;
    final signInButton = find.byType(ElevatedButton).first;

    await tester.enterText(emailFromField, 'android1');
    await tester.enterText(passwordFromField, '12345678');
    await tester.tap(signInButton);
    await tester.pumpAndSettle();
    });
  });
}