import 'package:common/theme.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookTheme(name: 'Light', isDefault: true)
ThemeData light() => lightTheme();

@WidgetbookTheme(name: 'Dark')
ThemeData dark() => darkTheme();
