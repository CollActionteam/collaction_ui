import 'package:flutter/material.dart';

/// Display the flag of a country in an avatar shape.
///
/// The widget takes in a country code as a string and an optional radius to specify the size of the avatar.
///
/// The [countryCode] argument is required and should be a valid two-letter country code as defined in ISO 3166-1.
///
/// The [radius] argument is optional and defaults to 20.0 if not provided.
///
/// Example:
///
/// ```dart
/// CountryFlagAvatar(
///   countryCode: 'US',
///   radius: 32.0,
/// )
/// ```
class CountryIcon extends StatelessWidget {
  final String countryCode;
  final double? radius;

  const CountryIcon({super.key, required this.countryCode, this.radius});

  @override
  Widget build(BuildContext context) {
    Image countryImg = Image.asset(
      'icons/flags/png/${countryCode.toLowerCase()}.png',
      package: 'country_icons',
    );

    return CircleAvatar(
      radius: radius ?? 20,
      backgroundImage: countryImg.image,
    );
  }
}
