part of '../../theme.dart';

extension SchemeExtension on ThemeData {
  ThemeData themeScheme() {
    return copyWith(
      primaryColor: kTheme.primary500,
      colorScheme: colorScheme.copyWith(
        secondary: kTheme.accent500,
        primary: kTheme.primary500,
        error: kTheme.negative500,
      ),
    );
  }
}
