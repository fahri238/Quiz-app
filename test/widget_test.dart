import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:quiz_app/quiz.dart'; // Ganti import ke file quiz.dart

void main() {
  testWidgets('Quiz app smoke test', (WidgetTester tester) async {
    // Build aplikasi kita, bukan MyApp.
    await tester.pumpWidget(const Quiz());

    // Verifikasi bahwa layar awal muncul dengan benar (ada tulisan 'Start Quiz').
    // Ini lebih relevan daripada mencari angka 0 atau 1.
    expect(find.text('Start Quiz'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_right_alt), findsOneWidget);
  });
}