import 'package:common/widgets/pill_button.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'PillButton', type: PillButton)
Widget buildPillButton(BuildContext context) => Center(
      child: PillButton(
        text: context.knobs
            .text(label: 'Button text', initialValue: 'Upload File'),
        onTap: context.knobs.boolean(label: 'Can be clicked') ? () {} : null,
        isLoading: context.knobs.boolean(label: 'Is loading'),
        isEnabled: context.knobs.boolean(label: 'Is enabled'),
        leading: context.knobs.boolean(label: 'Has leading icon')
            ? Icon(Icons.upload)
            : null,
      ),
    );
