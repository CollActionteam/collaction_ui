part of '../theme.dart';

/// Extension methods to simplify theming accessibility.
/// 
/// Usage:
/// ```dart
/// ...
/// Icon(color: context.kTheme.accent500)
/// ``` 
extension ThemeBuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  // Primary Color
  Color get primary => theme.primary;

  // Secondary/Accent Color
  Color get secondary => theme.colorScheme.secondary;

  // Formerly Secondary Color
  Color get tertiary => theme.colorScheme.secondaryContainer;

  // Background Color
  Color get background => theme.colorScheme.background;

  // Foreground color
  Color get onBackground => theme.onBackground;

  // If brightness dark
  bool get isDark => theme.brightness == Brightness.dark;

  CollactionTheme get kTheme => theme.kTheme;

  // Text themes
  TextStyle? get displayLarge => theme.textTheme.displayLarge;
  TextStyle? get displayMedium => theme.textTheme.displayMedium;
  TextStyle? get displaySmall => theme.textTheme.displaySmall;
  TextStyle? get headlineMedium => theme.textTheme.headlineMedium;
  TextStyle? get headlineSmall => theme.textTheme.headlineSmall;
  TextStyle? get titleLarge => theme.textTheme.titleLarge;
  TextStyle? get titleMedium => theme.textTheme.titleMedium;
  TextStyle? get titleSmall => theme.textTheme.titleSmall;
  TextStyle? get bodyLarge => theme.textTheme.bodyLarge;
  TextStyle? get bodyMedium => theme.textTheme.bodyMedium;
  TextStyle? get bodySmall => theme.textTheme.bodySmall;
  TextStyle? get labelLarge => theme.textTheme.labelLarge;
  TextStyle? get labelSmall => theme.textTheme.labelSmall;
}

extension ThemeX on ThemeData {
  CollactionTheme get kTheme => extension<CollactionTheme>()!;

  // Primary Color
  Color get primary => colorScheme.primary;

  // Foreground color
  Color get onBackground => colorScheme.onBackground;

  // Text themes
  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;
  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelSmall => textTheme.labelSmall;
}
