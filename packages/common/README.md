# collaction_common

This package provides a set of reusable widgets that can be used across all platforms. These widgets are designed to simplify and speed up the development process for creating collaction applications in Flutter.

## Installation

To use this package, add `collaction_common` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

## Usage

Import the package in your Dart code using:

```dart
import 'package:collaction_common/widgets/<widget>.dart';
```

Then, you can use any of the widgets provided in the package, such as:

```dart
CountryIcon(
    countryCode: 'UG',
    radius: 10,
),
```

## Widgets

The following widgets are included in this package:

### CountryIcon

Display the flag of a country in an avatar shape.

 ```dart
 CountryFlagAvatar(
   countryCode: 'US',
   radius: 32.0,
 )
 ```
## Parameters

| Parameter | Description |
|---|---|
| `key` | Widget access key. |
| `countryCode`* | Valid two-letter country code as defined in ISO 3166-1. |
| `radius` | Circular avatar radius. |

### AccentChip

Display a text label in a chip with an optional avatar leading and delete button.

 ```dart
 AccentChip(
   text: 'Hello World',
   leading: Icon(Icons.ac_unit),
   onDeleted: () => print('Chip deleted'),
   labelColor: Colors.white,
   color: Colors.blue,
   noMaterialTapTargetSize: true,
 )
 ```

## Parameters

| Parameter | Description |
|---|---|
| `key` | Widget access key. |
| `text`* | Label text. |
| `onDeleted` | Deletion callback. |
| `labelColor` | Label text color. |
| `color` | Background color. |
| `noMaterialTapTargetSize` | Sets the the [MaterialTapTargetSize] used for the chip will be set to [MaterialTapTargetSize.shrinkWrap] when true, otherwise [MaterialTapTargetSize.padded] will be used. |

### PillButton

[ElevatedButton] wrapper to display a pill-shaped button with text and an optional leading widget.

 ```dart
 // Elevated button
 PillButton(
   text: 'Click me',
   leading: Icon(Icons.ac_unit),
   onTap: () => print('Button tapped'),
   isEnabled: true,
   isLoading: false,
 )

// Elevated Icon button
 PillButton.icon(
   text: 'Click me',
   leading: Icon(Icons.ac_unit),
   onTap: () => print('Button tapped'),
   isEnabled: true,
   isLoading: false,
 )
```
## Parameters

| Parameter | Description |
|---|---|
| `key` | Widget access key. |
| `text`* | Button label. |
| `leading` | Widget to prepend to the button label. Most preferably an icon.<br />Only required when using the `PillButton.icon` factory. |
| `onTap` | Button click callback. |
| `isEnabled` | Whether the button is allowing user interaction or not. |
| `isLoading` | Whether the button is loading. |
## Contributing

All contributions are welcome, whether it is filing a bug report, filing a feature request, opening a pull request, or any other contribution.

We have a couple of documents which will guide you towards a good first contribution, our contributing documentation walks you through all of our conventions that we require you to uphold when contributing.

- [Contributing to CollAction](https://github.com/CollActionteam/collaction_app/blob/development/docs/CONTRIBUTING.md)

Additionally, if you want to do development, we have written a document that will help you setup your local environment.

- [Getting Started](https://github.com/CollActionteam/collaction_app/blob/development/docs/GETTING_STARTED.md)
