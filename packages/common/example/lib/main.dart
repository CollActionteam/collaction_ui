import 'package:collaction_common/theme.dart';
import 'package:example/demo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final theme = ValueNotifier(ThemeMode.system);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: theme,
        builder: (context, appTheme, _) {
          return MaterialApp(
            title: 'CollAction Components Demo',
            theme: lightTheme(),
            darkTheme: darkTheme(),
            themeMode: appTheme,
            home: const DemoPage(),
          );
        });
  }
}
