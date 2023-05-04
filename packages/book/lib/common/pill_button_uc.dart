import 'package:collaction_common/widgets/pill_button.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(
  name: 'PillButton',
  type: PillButton,
  designLink: "https://www.figma.com/file/dYFW0QF7Fg10dpSIxA3wQb/"
      "CollAction-App?node-id=70-217&t=QxAbOu88TrcMOCbF-4",
)
Widget buildPillButton(BuildContext context) => Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: PillButton(
          text: context.knobs
              .text(label: 'Button text', initialValue: 'Upload File'),
          onTap: context.knobs.boolean(label: 'Has onTap') ? () {} : null,
          isLoading: context.knobs.boolean(label: 'Is loading'),
          isEnabled: context.knobs.boolean(label: 'Is enabled'),
          leading: context.knobs.boolean(label: 'Has leading icon')
              ? Icon(Icons.upload)
              : null,
        ),
      ),
    );
