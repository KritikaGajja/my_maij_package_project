import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_maij_package_project/my_maij_package_project.dart';

void main() {
  testWidgets('Login screen is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginButton()));

    final emailLabelFinder = find.text('Email');
    final emailTextFieldFinder = find.byType(TextField);
    final submitButtonFinder = find.text('Submit');

    expect(emailLabelFinder, findsOneWidget);
    expect(emailTextFieldFinder, findsOneWidget);
    expect(submitButtonFinder, findsOneWidget);
  });
}
