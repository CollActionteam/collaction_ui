import 'package:common/widgets/accent_chip.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'AccentChip', type: AccentChip)
Widget buildAccentChip(BuildContext context) => Center(
      child: AccentChip(
        text: context.knobs
            .text(label: 'Label text', initialValue: 'SUSTAINABILITY'),
        onDeleted:
            context.knobs.boolean(label: 'Can be deleted') ? () {} : null,
      ),
    );
