import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension WidgetTesterX on WidgetTester {
  Future<void> buildAndPump({required Widget widget}) async {
    await pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: widget,
          ),
        ),
      ),
    );
  }
}
