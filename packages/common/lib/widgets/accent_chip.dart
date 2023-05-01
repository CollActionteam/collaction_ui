import 'package:flutter/material.dart';

/// Display a text label in a chip with an optional avatar leading and delete button.
///
/// The [text] argument is required and should be a non-empty string to display as the label in the chip.
///
/// The [noMaterialTapTargetSize] defaults to false. If set to true, the [MaterialTapTargetSize] used for the chip will be [MaterialTapTargetSize.shrinkWrap], otherwise [MaterialTapTargetSize.padded] will be used.
///
/// The [leading] specifies the widget to display as the avatar leading the chip.
///
/// The [onDeleted] provides a callback that will be called when the delete button in the chip is clicked.
///
/// The [labelColor] determines the color of the text in the chip. If not provided, the text color will be determined based on the theme.
///
/// The [color] specifies the background color of the chip. If not provided, the chip will use the theme's accent color.
///
/// Example:
///
/// ```dart
/// AccentChip(
///   text: 'Hello World',
///   leading: Icon(Icons.ac_unit),
///   onDeleted: () => print('Chip deleted'),
///   labelColor: Colors.white,
///   color: Colors.blue,
///   noMaterialTapTargetSize: true,
/// )
/// ```
class AccentChip extends StatelessWidget {
  final String text;
  final Widget? leading;
  final VoidCallback? onDeleted;
  final Color? labelColor;
  final Color? color;
  final bool noMaterialTapTargetSize;

  const AccentChip({
    super.key,
    required this.text,
    this.leading,
    this.onDeleted,
    this.labelColor,
    this.color,
    this.noMaterialTapTargetSize = false,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      materialTapTargetSize: noMaterialTapTargetSize
          ? MaterialTapTargetSize.shrinkWrap
          : MaterialTapTargetSize.padded,
      avatar: leading,
      backgroundColor: color,
      shape: color != null
          ? StadiumBorder(side: BorderSide(color: color!))
          : Theme.of(context).chipTheme.shape,
      label: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: labelColor ?? Theme.of(context).chipTheme.labelStyle?.color),
      ),
      deleteIcon: onDeleted != null
          ? Icon(Icons.cancel,
              color:
                  labelColor ?? Theme.of(context).chipTheme.labelStyle?.color)
          : null,
      onDeleted: onDeleted,
    );
  }
}
