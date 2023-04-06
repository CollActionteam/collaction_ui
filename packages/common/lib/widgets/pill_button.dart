import 'package:flutter/material.dart';

class PillButton extends StatelessWidget {
  final String text;
  final Widget? leading;
  final GestureTapCallback? onTap;
  final bool isEnabled;
  final bool isLoading;

  const PillButton({
    super.key,
    required this.text,
    this.leading,
    this.onTap,
    this.isEnabled = true,
    this.isLoading = false,
  });

  const PillButton.icon({
    super.key,
    required this.text,
    required this.leading,
    this.onTap,
    this.isEnabled = true,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return ElevatedButton(
        onPressed: () {},
        child: CircularProgressIndicator(
          color: ElevatedButtonTheme.of(context)
              .style
              ?.foregroundColor
              ?.resolve({}),
        ),
      );
    }

    return ElevatedButton.icon(
      icon: leading ?? const SizedBox(),
      label: Text(text),
      onPressed: isEnabled ? onTap : null,
    );
  }
}
