import 'package:collaction_common/widgets/country_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should display respective country icon', (tester) async {
    for (String code in ['UG', 'US', 'NL']) {
      await tester.pumpCountryIcon(
        countryCode: code,
      );

      expect(find.byType(CircleAvatar), findsOneWidget);

      final avatar =
          tester.firstWidget(find.byType(CircleAvatar)) as CircleAvatar;
      final image = avatar.backgroundImage as AssetImage;
      expect(image.assetName, "icons/flags/png/${code.toLowerCase()}.png");
      expect(image.package, 'country_icons');
    }
  });

  testWidgets("should match repective provided radius",
      (WidgetTester tester) async {
    for (double radius in [40, 50, 60]) {
      await tester.pumpCountryIcon(
        countryCode: 'UG',
        radius: radius,
      );

      expect(find.byType(CircleAvatar), findsOneWidget);

      final avatar =
          tester.firstWidget(find.byType(CircleAvatar)) as CircleAvatar;
      expect(avatar.radius, radius);
    }
  });
}

extension WidgetTesterX on WidgetTester {
  Future<void> pumpCountryIcon({
    required String countryCode,
    double? radius,
  }) async {
    await pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CountryIcon(
            countryCode: countryCode,
            radius: radius,
          ),
        ),
      ),
    );
  }
}
