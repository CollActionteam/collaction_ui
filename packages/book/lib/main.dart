import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:common/theme.dart';

void main() {
  runApp(const WidgetBook());
}

@WidgetbookApp.material()
class WidgetBook extends StatelessWidget {
  const WidgetBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CollAction Component Library',
      theme: lightTheme(),
      home: const Placeholder(),
    );
  }
}
