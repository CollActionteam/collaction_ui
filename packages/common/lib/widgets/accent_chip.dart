import 'package:flutter/material.dart';

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
