// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aisaas/main.dart';

void main() {
  testWidgets('Main screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the main screen is loaded correctly.
    expect(find.text('樂齡守護'), findsOneWidget);

    // Verify that the bottom navigation bar is displayed with the correct icons and labels.
    expect(find.text('AI 語音聊天'), findsOneWidget);
    expect(find.byIcon(Icons.chat), findsOneWidget);
    expect(find.text('健康數據'), findsOneWidget);
    expect(find.byIcon(Icons.health_and_safety), findsOneWidget);
    expect(find.text('用藥管理'), findsOneWidget);
    expect(find.byIcon(Icons.medical_services), findsOneWidget);
    expect(find.text('緊急連絡卡'), findsOneWidget);
    expect(find.byIcon(Icons.contact_mail), findsOneWidget);
  });
}
