// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'package:collaction_book/common/accent_chip_uc.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [],
      directories: [
        WidgetbookFolder(
          name: 'widgets',
          children: [
            WidgetbookComponent(
              name: 'AccentChip',
              useCases: [
                WidgetbookUseCase(
                  name: 'AccentChip',
                  builder: (context) => buildAccentChip(context),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
