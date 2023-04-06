part of '../theme.dart';

@immutable
class CollactionTheme extends ThemeExtension<CollactionTheme> {
  // Colors
  final Color? background;

  final Color? secondary;

  final Color? primary0;
  final Color? primary100;
  final Color? primary200;
  final Color? primary300;
  final Color? primary400;
  final Color? primary500;

  final Color? accent100;
  final Color? accent200;
  final Color? accent300;
  final Color? accent400;
  final Color? accent500;

  final Color? negative100;
  final Color? negative200;
  final Color? negative300;
  final Color? negative400;
  final Color? negative500;

  final Color? warning100;
  final Color? warning200;
  final Color? warning300;
  final Color? warning400;
  final Color? warning500;

  final Color? positive100;
  final Color? positive200;
  final Color? positive300;
  final Color? positive400;
  final Color? positive500;

  final Color? gold500;
  final Color? diamond500;
  final Color? silver500;
  final Color? bronze500;

  // Text Styles
  final TextStyle? largeTitle;
  final TextStyle? headline;
  final TextStyle? body;
  final TextStyle? subheadline;
  final TextStyle? footnote;
  final TextStyle? caption1;
  final TextStyle? caption2;
  final TextStyle? title1;
  final TextStyle? title2;
  final TextStyle? title3;

  // Dimensions
  final double? inputBorderRadius;
  final double? buttonBorderRadius;
  final Size? elevatedButtonSize;

  const CollactionTheme({
    required this.background,
    required this.secondary,
    required this.primary0,
    required this.primary100,
    required this.primary200,
    required this.primary300,
    required this.primary400,
    required this.primary500,
    required this.accent100,
    required this.accent200,
    required this.accent300,
    required this.accent400,
    required this.accent500,
    required this.negative100,
    required this.negative200,
    required this.negative300,
    required this.negative400,
    required this.negative500,
    required this.warning100,
    required this.warning200,
    required this.warning300,
    required this.warning400,
    required this.warning500,
    required this.positive100,
    required this.positive200,
    required this.positive300,
    required this.positive400,
    required this.positive500,
    required this.gold500,
    required this.diamond500,
    required this.silver500,
    required this.bronze500,
    required this.largeTitle,
    required this.headline,
    required this.body,
    required this.subheadline,
    required this.footnote,
    required this.caption1,
    required this.caption2,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.inputBorderRadius,
    required this.buttonBorderRadius,
    required this.elevatedButtonSize,
  });

  @override
  ThemeExtension<CollactionTheme> copyWith({
    Color? background,
    Color? secondary,
    Color? primary0,
    Color? primary100,
    Color? primary200,
    Color? primary300,
    Color? primary400,
    Color? primary500,
    Color? accent100,
    Color? accent200,
    Color? accent300,
    Color? accent400,
    Color? accent500,
    Color? negative100,
    Color? negative200,
    Color? negative300,
    Color? negative400,
    Color? negative500,
    Color? warning100,
    Color? warning200,
    Color? warning300,
    Color? warning400,
    Color? warning500,
    Color? positive100,
    Color? positive200,
    Color? positive300,
    Color? positive400,
    Color? positive500,
    Color? gold500,
    Color? diamond500,
    Color? silver500,
    Color? bronze500,
    TextStyle? largeTitle,
    TextStyle? headline,
    TextStyle? body,
    TextStyle? subheadline,
    TextStyle? footnote,
    TextStyle? caption1,
    TextStyle? caption2,
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? title3,
    double? inputBorderRadius,
    double? buttonBorderRadius,
    Size? elevatedButtonSize,
  }) {
    return CollactionTheme(
      background: background ?? this.background,
      secondary: secondary ?? this.secondary,
      primary0: primary0 ?? this.primary0,
      primary100: primary100 ?? this.primary100,
      primary200: primary200 ?? this.primary200,
      primary300: primary300 ?? this.primary300,
      primary400: primary400 ?? this.primary400,
      primary500: primary500 ?? this.primary500,
      accent100: accent100 ?? this.accent100,
      accent200: accent200 ?? this.accent200,
      accent300: accent300 ?? this.accent300,
      accent400: accent400 ?? this.accent400,
      accent500: accent500 ?? this.accent500,
      negative100: negative100 ?? this.negative100,
      negative200: negative200 ?? this.negative200,
      negative300: negative300 ?? this.negative300,
      negative400: negative400 ?? this.negative400,
      negative500: negative500 ?? this.negative500,
      warning100: warning100 ?? this.warning100,
      warning200: warning200 ?? this.warning200,
      warning300: warning300 ?? this.warning300,
      warning400: warning400 ?? this.warning400,
      warning500: warning500 ?? this.warning500,
      positive100: positive100 ?? this.positive100,
      positive200: positive200 ?? this.positive200,
      positive300: positive300 ?? this.positive300,
      positive400: positive400 ?? this.positive400,
      positive500: positive500 ?? this.positive500,
      gold500: gold500 ?? this.gold500,
      diamond500: diamond500 ?? this.diamond500,
      silver500: silver500 ?? this.silver500,
      bronze500: bronze500 ?? this.bronze500,
      largeTitle: largeTitle ?? this.largeTitle,
      headline: headline ?? this.headline,
      body: body ?? this.body,
      subheadline: subheadline ?? this.subheadline,
      footnote: footnote ?? this.footnote,
      caption1: caption1 ?? this.caption1,
      caption2: caption2 ?? this.caption2,
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
      inputBorderRadius: inputBorderRadius ?? this.inputBorderRadius,
      buttonBorderRadius: buttonBorderRadius ?? this.buttonBorderRadius,
      elevatedButtonSize: elevatedButtonSize ?? this.elevatedButtonSize,
    );
  }

  @override
  ThemeExtension<CollactionTheme> lerp(
      covariant ThemeExtension<CollactionTheme>? other, double t) {
    if (other is! CollactionTheme) {
      return this;
    }

    return CollactionTheme(
      background: Color.lerp(background, other.background, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      primary0: Color.lerp(primary0, other.primary0, t),
      primary100: Color.lerp(primary100, other.primary100, t),
      primary200: Color.lerp(primary200, other.primary200, t),
      primary300: Color.lerp(primary300, other.primary300, t),
      primary400: Color.lerp(primary400, other.primary400, t),
      primary500: Color.lerp(primary500, other.primary500, t),
      accent100: Color.lerp(accent100, other.accent100, t),
      accent200: Color.lerp(accent200, other.accent200, t),
      accent300: Color.lerp(accent300, other.accent300, t),
      accent400: Color.lerp(accent400, other.accent400, t),
      accent500: Color.lerp(accent500, other.accent500, t),
      negative100: Color.lerp(negative100, other.negative100, t),
      negative200: Color.lerp(negative200, other.negative200, t),
      negative300: Color.lerp(negative300, other.negative300, t),
      negative400: Color.lerp(negative400, other.negative400, t),
      negative500: Color.lerp(negative500, other.negative500, t),
      warning100: Color.lerp(warning100, other.warning100, t),
      warning200: Color.lerp(warning200, other.warning200, t),
      warning300: Color.lerp(warning300, other.warning300, t),
      warning400: Color.lerp(warning400, other.warning400, t),
      warning500: Color.lerp(warning500, other.warning500, t),
      positive100: Color.lerp(positive100, other.positive100, t),
      positive200: Color.lerp(positive200, other.positive200, t),
      positive300: Color.lerp(positive300, other.positive300, t),
      positive400: Color.lerp(positive400, other.positive400, t),
      positive500: Color.lerp(positive500, other.positive500, t),
      diamond500: Color.lerp(diamond500, other.diamond500, t),
      gold500: Color.lerp(gold500, other.gold500, t),
      silver500: Color.lerp(silver500, other.silver500, t),
      bronze500: Color.lerp(bronze500, other.bronze500, t),
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t),
      headline: TextStyle.lerp(headline, other.headline, t),
      body: TextStyle.lerp(body, other.body, t),
      subheadline: TextStyle.lerp(subheadline, other.subheadline, t),
      footnote: TextStyle.lerp(footnote, other.footnote, t),
      caption1: TextStyle.lerp(caption1, other.caption1, t),
      caption2: TextStyle.lerp(caption2, other.caption2, t),
      title1: TextStyle.lerp(title1, other.title1, t),
      title2: TextStyle.lerp(title2, other.title2, t),
      title3: TextStyle.lerp(title3, other.title3, t),
      inputBorderRadius: inputBorderRadius ?? other.inputBorderRadius,
      buttonBorderRadius: buttonBorderRadius ?? other.buttonBorderRadius,
      elevatedButtonSize: elevatedButtonSize ?? other.elevatedButtonSize,
    );
  }

  // the light theme
  static const light = CollactionTheme(
    background: Color(0xFFE5E5E5),
    secondary: Color(0xFFF9F9F9),
    primary0: Color(0xFFEFEFEF),
    primary100: Color(0xFFCCCCCC),
    primary200: Color(0xFF999999),
    primary300: Color(0xFF666666),
    primary400: Color(0xFF333333),
    primary500: Color(0xFF000000),
    accent100: Color(0xFFD2F3EB),
    accent200: Color(0xFFA5E8D8),
    accent300: Color(0xFF92E3D0),
    accent400: Color(0xFF4AD1B1),
    accent500: Color(0xFF2EB494),
    negative100: Color(0xFFFFCCC6),
    negative200: Color(0xFFFF9A8D),
    negative300: Color(0xFFFF6754),
    negative400: Color(0xFFFF341B),
    negative500: Color(0xFFE11900),
    warning100: Color(0xFFFFF2D9),
    warning200: Color(0xFFFFE6B4),
    warning300: Color(0xFFFFD98E),
    warning400: Color(0xFFFFCD69),
    warning500: Color(0xFFFFC043),
    positive100: Color(0xFFBAFDDC),
    positive200: Color(0xFF75FABA),
    positive300: Color(0xFF30F897),
    positive400: Color(0xFF07D974),
    positive500: Color(0xFF05944F),
    gold500: Color(0xFFECDA4C),
    diamond500: Color(0xFFCBE6FF),
    silver500: Color(0xFFDCDCDF),
    bronze500: Color(0xFFC6925B),
    largeTitle: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w700,
      height: 41 / 34,
    ),
    headline: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w700,
      height: 22 / 17,
    ),
    body: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w300,
      height: 26 / 17,
    ),
    subheadline: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      height: 20 / 15,
    ),
    footnote: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      height: 18 / 13,
    ),
    caption1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 16 / 12,
    ),
    caption2: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w700,
      height: 13 / 11,
    ),
    title1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 34 / 28,
    ),
    title2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      height: 28 / 22,
    ),
    title3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      height: 25 / 20,
    ),
    inputBorderRadius: 20,
    buttonBorderRadius: 200,
    elevatedButtonSize: Size(double.infinity, 52),
  );

  // the dark theme
  static const dark = CollactionTheme(
    background: Color(0xFFE5E5E5),
    secondary: Color(0xFFF9F9F9),
    primary0: Color(0xFFEFEFEF),
    primary100: Color(0xFFCCCCCC),
    primary200: Color(0xFF999999),
    primary300: Color(0xFF666666),
    primary400: Color(0xFF333333),
    primary500: Color(0xFF000000),
    accent100: Color(0xFFD2F3EB),
    accent200: Color(0xFFA5E8D8),
    accent300: Color(0xFF92E3D0),
    accent400: Color(0xFF4AD1B1),
    accent500: Color(0xFF2EB494),
    negative100: Color(0xFFFFCCC6),
    negative200: Color(0xFFFF9A8D),
    negative300: Color(0xFFFF6754),
    negative400: Color(0xFFFF341B),
    negative500: Color(0xFFE11900),
    warning100: Color(0xFFFFF2D9),
    warning200: Color(0xFFFFE6B4),
    warning300: Color(0xFFFFD98E),
    warning400: Color(0xFFFFCD69),
    warning500: Color(0xFFFFC043),
    positive100: Color(0xFFBAFDDC),
    positive200: Color(0xFF75FABA),
    positive300: Color(0xFF30F897),
    positive400: Color(0xFF07D974),
    positive500: Color(0xFF05944F),
    gold500: Color(0xFFECDA4C),
    diamond500: Color(0xFFCBE6FF),
    silver500: Color(0xFFDCDCDF),
    bronze500: Color(0xFFC6925B),
    largeTitle: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w700,
      height: 41 / 34,
    ),
    headline: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w700,
      height: 22 / 17,
    ),
    body: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w300,
      height: 26 / 17,
    ),
    subheadline: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      height: 20 / 15,
    ),
    footnote: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      height: 18 / 13,
    ),
    caption1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 16 / 12,
    ),
    caption2: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w700,
      height: 13 / 11,
    ),
    title1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 34 / 28,
    ),
    title2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      height: 28 / 22,
    ),
    title3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      height: 25 / 20,
    ),
    inputBorderRadius: 20,
    buttonBorderRadius: 200,
    elevatedButtonSize: Size(double.infinity, 52),
  );
}
