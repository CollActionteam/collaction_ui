import 'package:common/widgets/country_icon.dart';
import 'package:country_codes/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(
  name: 'CountryIcon',
  type: CountryIcon,
)
Widget buildCountryIcon(BuildContext context) {
  return Center(
    child: CountryIcon(
      countryCode: context.knobs.options(
        label: 'Country Code',
        options: List.from(
          _countries.map((code) => code.alpha2Code),
        ),
        labelBuilder: (code) =>
            _countries.firstWhere((ct) => ct.alpha2Code == code).name ??
            'Unknown',
      ),
      radius: context.knobs.nullableSlider(
        label: 'Radius',
        initialValue: 50,
        max: 100,
        min: 0,
        divisions: 10,
      ),
    ),
  );
}

final List<CountryDetails> _countries = List.from(CountryCodes.countryCodes());
