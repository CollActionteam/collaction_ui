part of '../../theme.dart';

extension InputExtension on ThemeData {
  ThemeData themeInputs() {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(kTheme.inputBorderRadius ?? 0),
      borderSide: const BorderSide(width: 0, color: Colors.transparent),
    );

    return copyWith(
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: kTheme.body?.copyWith(color: kTheme.primary300),
        labelStyle: kTheme.body?.copyWith(color: kTheme.primary300),
        filled: true,
        fillColor: kTheme.primary0,
        focusColor: kTheme.accent500,
        helperStyle: kTheme.caption1?.copyWith(color: kTheme.primary300),
        enabledBorder: border,
        focusedBorder: border,
        focusedErrorBorder: border,
        errorBorder: border,
        contentPadding: const EdgeInsets.all(6.0),
      ),
    );
  }
}
