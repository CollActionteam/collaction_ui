part of '../../theme.dart';

extension TextExtension on ThemeData {
  ThemeData themeText() {
    return copyWith(
      textTheme: textTheme.apply(
        fontFamily: 'Rubik',
        bodyColor: onBackground,
        displayColor: onBackground,
      ),
      textSelectionTheme: textSelectionTheme.copyWith(
        cursorColor: kTheme.accent500,
      ),
    );
  }
}
