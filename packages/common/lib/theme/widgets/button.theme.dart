part of '../../theme.dart';

extension ButtonThemeExtension on ThemeData {
  ThemeData themeButtons() {
    return copyWith(
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.disabled)) {
              return kTheme.primary200;
            }

            return kTheme.accent500;
          }),
          elevation: MaterialStateProperty.all(0),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.disabled)) {
              return kTheme.primary200;
            }
            return kTheme.secondary;
          }),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                kTheme.buttonBorderRadius ?? 0,
              ),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return kTheme.primary0;
              }
              return kTheme.accent500;
            },
          ),
          textStyle: MaterialStateProperty.all(kTheme.subheadline),
          elevation: MaterialStateProperty.all(0),
        ),
      ),
    );
  }
}
