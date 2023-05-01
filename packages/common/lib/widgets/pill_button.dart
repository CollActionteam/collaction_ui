import 'package:flutter/material.dart';

/// [ElevatedButton] wrapper to display a pill-shaped button with text and an optional leading widget.
///
/// The [text] argument is required and should be a non-empty string to display as the label in the button.
///
/// The [leading] argument is optional and specifies the widget to display as the leading content of the button. The [PillButton.icon] factory constructor makes [leading] required.
///
/// The [onTap] argument is optional and provides a callback that will be called when the button is tapped.
///
/// The [isEnabled] argument is optional and defaults to true. If set to false, the button will be disabled and won't be tappable.
///
/// The [isLoading] argument is optional and defaults to false. If set to true, the button will display a circular progress indicator and won't be tappable.
///
/// Example:
///
/// ```dart
/// PillButton(
///   text: 'Click me',
///   leading: Icon(Icons.ac_unit),
///   onTap: () => print('Button tapped'),
///   isEnabled: true,
///   isLoading: false,
/// )
///
/// PillButton.icon(
///   text: 'Click me',
///   leading: Icon(Icons.ac_unit),
///   onTap: () => print('Button tapped'),
///   isEnabled: true,
///   isLoading: false,
/// )
/// ```
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

  /// A factory constructor that creates a [PillButton] with a required [leading] widget.
  ///
  /// The [leading] argument is required and specifies the widget to display as the leading content of the button.
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
