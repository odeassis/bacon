import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseColor extends ThemeExtension<BaconBaseColor>
    with DiagnosticableTreeMixin {
  const BaconBaseColor({
    required this.brand,
    required this.brandLight,
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.inverse,
    required this.disabled,
    required this.alwaysWhite,
    required this.alwaysDark,
    required this.alertDanger,
    required this.alertDangerLight,
    required this.alertWarning,
    required this.alertWarningLight,
    required this.alertSuccess,
    required this.alertSuccessLight,
    required this.alertInformation,
    required this.alertInformationLight,
    required this.accentPurple,
    required this.accentPurpleLight,
    required this.accentPink,
    required this.accentPinkLight,
    required this.accentOrange,
    required this.accentOrangeLight,
    required this.accentBlue,
    required this.accentBlueLight,
    required this.accentGreen,
    required this.accentGreenLight,
    required this.accentYellow,
    required this.accentYellowLight,
    required this.accentRed,
    required this.accentRedLight,
  });

  final Color brand;
  final Color brandLight;
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color inverse;
  final Color disabled;
  final Color alwaysWhite;
  final Color alwaysDark;
  final Color alertDanger;
  final Color alertDangerLight;
  final Color alertWarning;
  final Color alertWarningLight;
  final Color alertSuccess;
  final Color alertSuccessLight;
  final Color alertInformation;
  final Color alertInformationLight;
  final Color accentPurple;
  final Color accentPurpleLight;
  final Color accentPink;
  final Color accentPinkLight;
  final Color accentOrange;
  final Color accentOrangeLight;
  final Color accentBlue;
  final Color accentBlueLight;
  final Color accentGreen;
  final Color accentGreenLight;
  final Color accentYellow;
  final Color accentYellowLight;
  final Color accentRed;
  final Color accentRedLight;

  @override
  BaconBaseColor lerp(
    ThemeExtension<BaconBaseColor>? other,
    double t,
  ) {
    if (other is! BaconBaseColor) return this;
    return BaconBaseColor(
      brand: Color.lerp(brand, other.brand, t)!,
      brandLight: Color.lerp(brandLight, other.brandLight, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      inverse: Color.lerp(inverse, other.inverse, t)!,
      disabled: Color.lerp(disabled, other.disabled, t)!,
      alwaysWhite: Color.lerp(alwaysWhite, other.alwaysWhite, t)!,
      alwaysDark: Color.lerp(alwaysDark, other.alwaysDark, t)!,
      alertDanger: Color.lerp(alertDanger, other.alertDanger, t)!,
      alertDangerLight:
          Color.lerp(alertDangerLight, other.alertDangerLight, t)!,
      alertWarning: Color.lerp(alertWarning, other.alertWarning, t)!,
      alertWarningLight:
          Color.lerp(alertWarningLight, other.alertWarningLight, t)!,
      alertSuccess: Color.lerp(alertSuccess, other.alertSuccess, t)!,
      alertSuccessLight:
          Color.lerp(alertSuccessLight, other.alertSuccessLight, t)!,
      alertInformation:
          Color.lerp(alertInformation, other.alertInformation, t)!,
      alertInformationLight:
          Color.lerp(alertInformationLight, other.alertInformationLight, t)!,
      accentPurple: Color.lerp(accentPurple, other.accentPurple, t)!,
      accentPurpleLight:
          Color.lerp(accentPurpleLight, other.accentPurpleLight, t)!,
      accentPink: Color.lerp(accentPink, other.accentPink, t)!,
      accentPinkLight: Color.lerp(accentPinkLight, other.accentPinkLight, t)!,
      accentOrange: Color.lerp(accentOrange, other.accentOrange, t)!,
      accentOrangeLight:
          Color.lerp(accentOrangeLight, other.accentOrangeLight, t)!,
      accentBlue: Color.lerp(accentBlue, other.accentBlue, t)!,
      accentBlueLight: Color.lerp(accentBlueLight, other.accentBlueLight, t)!,
      accentGreen: Color.lerp(accentGreen, other.accentGreen, t)!,
      accentGreenLight:
          Color.lerp(accentGreenLight, other.accentGreenLight, t)!,
      accentYellow: Color.lerp(accentYellow, other.accentYellow, t)!,
      accentYellowLight:
          Color.lerp(accentYellowLight, other.accentYellowLight, t)!,
      accentRed: Color.lerp(accentRed, other.accentRed, t)!,
      accentRedLight: Color.lerp(accentRedLight, other.accentRedLight, t)!,
    );
  }

  @override
  ThemeExtension<BaconBaseColor> copyWith({
    Color? brand,
    Color? brandLight,
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? inverse,
    Color? disabled,
    Color? alwaysWhite,
    Color? alwaysDark,
    Color? alertDanger,
    Color? alertDangerLight,
    Color? alertWarning,
    Color? alertWarningLight,
    Color? alertSuccess,
    Color? alertSuccessLight,
    Color? alertInformation,
    Color? alertInformationLight,
    Color? accentPurple,
    Color? accentPurpleLight,
    Color? accentPink,
    Color? accentPinkLight,
    Color? accentOrange,
    Color? accentOrangeLight,
    Color? accentBlue,
    Color? accentBlueLight,
    Color? accentGreen,
    Color? accentGreenLight,
    Color? accentYellow,
    Color? accentYellowLight,
    Color? accentRed,
    Color? accentRedLight,
  }) {
    return BaconBaseColor(
      brand: brand ?? this.brand,
      brandLight: brandLight ?? this.brandLight,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      inverse: inverse ?? this.inverse,
      disabled: disabled ?? this.disabled,
      alwaysWhite: alwaysWhite ?? this.alwaysWhite,
      alwaysDark: alwaysDark ?? this.alwaysDark,
      alertDanger: alertDanger ?? this.alertDanger,
      alertDangerLight: alertDangerLight ?? this.alertDangerLight,
      alertWarning: alertWarning ?? this.alertWarning,
      alertWarningLight: alertWarningLight ?? this.alertWarningLight,
      alertSuccess: alertSuccess ?? this.alertSuccess,
      alertSuccessLight: alertSuccessLight ?? this.alertSuccessLight,
      alertInformation: alertInformation ?? this.alertInformation,
      alertInformationLight:
          alertInformationLight ?? this.alertInformationLight,
      accentPurple: accentPurple ?? this.accentPurple,
      accentPurpleLight: accentPurpleLight ?? this.accentPurpleLight,
      accentPink: accentPink ?? this.accentPink,
      accentPinkLight: accentPinkLight ?? this.accentPinkLight,
      accentOrange: accentOrange ?? this.accentOrange,
      accentOrangeLight: accentOrangeLight ?? this.accentOrangeLight,
      accentBlue: accentBlue ?? this.accentBlue,
      accentBlueLight: accentBlueLight ?? this.accentBlueLight,
      accentGreen: accentGreen ?? this.accentGreen,
      accentGreenLight: accentGreenLight ?? this.accentGreenLight,
      accentYellow: accentYellow ?? this.accentYellow,
      accentYellowLight: accentYellowLight ?? this.accentYellowLight,
      accentRed: accentRed ?? this.accentRed,
      accentRedLight: accentRedLight ?? this.accentRedLight,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconBaseColor"));
    properties.add(ColorProperty('brand', brand));
    properties.add(ColorProperty('brandLight', brandLight));
    properties.add(ColorProperty('primary', primary));
    properties.add(ColorProperty('secondary', secondary));
    properties.add(ColorProperty('tertiary', tertiary));
    properties.add(ColorProperty('inverse', inverse));
    properties.add(ColorProperty('disabled', disabled));
    properties.add(ColorProperty('alwaysWhite', alwaysWhite));
    properties.add(ColorProperty('alwaysDark', alwaysDark));
    properties.add(ColorProperty('alertDanger', alertDanger));
    properties.add(ColorProperty('alertDangerLight', alertDangerLight));
    properties.add(ColorProperty('alertWarning', alertWarning));
    properties.add(ColorProperty('alertWarningLight', alertWarningLight));
    properties.add(ColorProperty('alertSuccess', alertSuccess));
    properties.add(ColorProperty('alertSuccessLight', alertSuccessLight));
    properties.add(ColorProperty('alertInformation', alertInformation));
    properties
        .add(ColorProperty('alertInformationLight', alertInformationLight));
    properties.add(ColorProperty('accentPurple', accentPurple));
    properties.add(ColorProperty('accentPurpleLight', accentPurpleLight));
    properties.add(ColorProperty('accentPink', accentPink));
    properties.add(ColorProperty('accentPinkLight', accentPinkLight));
    properties.add(ColorProperty('accentOrange', accentOrange));
    properties.add(ColorProperty('accentOrangeLight', accentOrangeLight));
    properties.add(ColorProperty('accentBlue', accentBlue));
    properties.add(ColorProperty('accentBlueLight', accentBlueLight));
    properties.add(ColorProperty('accentGreen', accentGreen));
    properties.add(ColorProperty('accentGreenLight', accentGreenLight));
    properties.add(ColorProperty('accentYellow', accentYellow));
    properties.add(ColorProperty('accentYellowLight', accentYellowLight));
    properties.add(ColorProperty('accentRed', accentRed));
    properties.add(ColorProperty('accentRedLight', accentRedLight));
  }
}
