import 'package:flutter/material.dart';

part 'theme/scheme.dart';
part 'theme/extension.dart';
part 'theme/widgets/button.theme.dart';
part 'theme/widgets/input.theme.dart';
part 'theme/widgets/scheme.theme.dart';
part 'theme/widgets/text.theme.dart';

ThemeData lightTheme() {
  final theme = ThemeData.light();

  return theme
      .copyWith(
        extensions: <ThemeExtension<dynamic>>[
          CollactionTheme.light,
        ],
        colorScheme: theme.colorScheme.copyWith(
          background: Colors.white,
          onBackground: Colors.black,
        ),
        brightness: Brightness.light,
      )
      .themeScheme()
      .themeButtons()
      .themeInputs()
      .themeText();
}

ThemeData darkTheme() {
  final theme = ThemeData.dark();

  return theme
      .copyWith(
        extensions: <ThemeExtension<dynamic>>[
          CollactionTheme.dark,
        ],
        colorScheme: theme.colorScheme.copyWith(
          background: theme.scaffoldBackgroundColor,
          onBackground: Colors.white,
        ),
      )
      .themeScheme()
      .themeButtons()
      .themeInputs()
      .themeText();
}
