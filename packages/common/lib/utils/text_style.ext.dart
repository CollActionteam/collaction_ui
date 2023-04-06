import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  /// Returns [TextStyle] with a line height of [lineHeight] px or
  /// [this] if [fontSize] is null.
  ///
  /// [TextStyle] provides [height] property which is a scale factor
  /// rather than a static value, thus requiring us to calculate
  /// the scale factor with the formula of:
  ///
  /// scale factor = line height (in px) / font size (in px).
  ///
  /// This method provides a convenient way to describe intended
  /// line height rather than having the calculation in our UI code.
  TextStyle withLineHeight(double lineHeight) {
    if (fontSize == null) return this;

    return copyWith(height: lineHeight / fontSize!);
  }

  /// Convenience functions for more declarative styling.
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);
}
