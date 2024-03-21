import 'package:flutter/material.dart';

@immutable
class BaconColorScheme {
  const BaconColorScheme({
    required this.backgroundBrand,
    required this.backgroundBrandLight,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
    required this.backgroundInverse,
    required this.backgroundAlwaysWhite,
    required this.backgroundAlwaysDark,
    required this.backgroundAlertDanger,
    required this.backgroundAlertDangerLight,
    required this.backgroundAlertWarning,
    required this.backgroundAlertWarningLight,
    required this.backgroundAlertSuccess,
    required this.backgroundAlertSuccessLight,
    required this.backgroundAlertInformation,
    required this.backgroundAlertInformationLight,
    required this.backgroundAccentPurple,
    required this.backgroundAccentPurpleLight,
    required this.backgroundAccentPink,
    required this.backgroundAccentPinkLight,
    required this.backgroundAccentOrange,
    required this.backgroundAccentOrangeLight,
    required this.backgroundAccentBlue,
    required this.backgroundAccentBlueLight,
    required this.backgroundAccentGreen,
    required this.backgroundAccentGreenLight,
    required this.backgroundAccentYellow,
    required this.backgroundAccentYellowLight,
    required this.backgroundAccentRed,
    required this.backgroundAccentRedLight,
    required this.borderBrand,
    required this.borderPrimary,
    required this.borderSecondary,
    required this.borderInputDefault,
    required this.borderInputHover,
    required this.borderInputFocus,
    required this.borderInputDisabled,
    required this.borderInputActive,
    required this.borderInputInverse,
    required this.borderAlertDanger,
    required this.borderAlertWarning,
    required this.borderAlertSuccess,
    required this.borderAlertInformation,
    required this.borderAccentPurple,
    required this.borderAccentPink,
    required this.borderAccentOrange,
    required this.borderAccentBlue,
    required this.borderAccentGreen,
    required this.borderAccentYellow,
    required this.borderAccentRed,
    required this.contentBrand,
    required this.contentPrimary,
    required this.contentSecondary,
    required this.contentTertiary,
    required this.contentAlwaysWhite,
    required this.contentAlwaysDark,
    required this.contentInverse,
    required this.contentDisabled,
    required this.contentAlertDanger,
    required this.contentAlertWarning,
    required this.contentAlertSuccess,
    required this.contentAlertInformation,
    required this.contentAccentPurple,
    required this.contentAccentPink,
    required this.contentAccentOrange,
    required this.contentAccentBlue,
    required this.contentAccentGreen,
    required this.contentAccentYellow,
    required this.contentAccentRed,
  });

  final Color backgroundBrand;
  final Color backgroundBrandLight;
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color backgroundTertiary;
  final Color backgroundInverse;
  final Color backgroundAlwaysWhite;
  final Color backgroundAlwaysDark;
  final Color backgroundAlertDanger;
  final Color backgroundAlertDangerLight;
  final Color backgroundAlertWarning;
  final Color backgroundAlertWarningLight;
  final Color backgroundAlertSuccess;
  final Color backgroundAlertSuccessLight;
  final Color backgroundAlertInformation;
  final Color backgroundAlertInformationLight;
  final Color backgroundAccentPurple;
  final Color backgroundAccentPurpleLight;
  final Color backgroundAccentPink;
  final Color backgroundAccentPinkLight;
  final Color backgroundAccentOrange;
  final Color backgroundAccentOrangeLight;
  final Color backgroundAccentBlue;
  final Color backgroundAccentBlueLight;
  final Color backgroundAccentGreen;
  final Color backgroundAccentGreenLight;
  final Color backgroundAccentYellow;
  final Color backgroundAccentYellowLight;
  final Color backgroundAccentRed;
  final Color backgroundAccentRedLight;
  final Color borderBrand;
  final Color borderPrimary;
  final Color borderSecondary;
  final Color borderInputDefault;
  final Color borderInputHover;
  final Color borderInputFocus;
  final Color borderInputDisabled;
  final Color borderInputActive;
  final Color borderInputInverse;
  final Color borderAlertDanger;
  final Color borderAlertWarning;
  final Color borderAlertSuccess;
  final Color borderAlertInformation;
  final Color borderAccentPurple;
  final Color borderAccentPink;
  final Color borderAccentOrange;
  final Color borderAccentBlue;
  final Color borderAccentGreen;
  final Color borderAccentYellow;
  final Color borderAccentRed;
  final Color contentBrand;
  final Color contentPrimary;
  final Color contentSecondary;
  final Color contentTertiary;
  final Color contentAlwaysWhite;
  final Color contentAlwaysDark;
  final Color contentInverse;
  final Color contentDisabled;
  final Color contentAlertDanger;
  final Color contentAlertWarning;
  final Color contentAlertSuccess;
  final Color contentAlertInformation;
  final Color contentAccentPurple;
  final Color contentAccentPink;
  final Color contentAccentOrange;
  final Color contentAccentBlue;
  final Color contentAccentGreen;
  final Color contentAccentYellow;
  final Color contentAccentRed;

  static BaconColorScheme lerp(
    BaconColorScheme a,
    BaconColorScheme b,
    double t,
  ) {
    return BaconColorScheme(
      backgroundBrand: Color.lerp(a.backgroundBrand, b.backgroundBrand, t)!,
      backgroundBrandLight:
          Color.lerp(a.backgroundBrandLight, b.backgroundBrandLight, t)!,
      backgroundPrimary:
          Color.lerp(a.backgroundPrimary, b.backgroundPrimary, t)!,
      backgroundSecondary:
          Color.lerp(a.backgroundSecondary, b.backgroundSecondary, t)!,
      backgroundTertiary:
          Color.lerp(a.backgroundTertiary, b.backgroundTertiary, t)!,
      backgroundInverse:
          Color.lerp(a.backgroundInverse, b.backgroundInverse, t)!,
      backgroundAlwaysWhite:
          Color.lerp(a.backgroundAlwaysWhite, b.backgroundAlwaysWhite, t)!,
      backgroundAlwaysDark:
          Color.lerp(a.backgroundAlwaysDark, b.backgroundAlwaysDark, t)!,
      backgroundAlertDanger:
          Color.lerp(a.backgroundAlertDanger, b.backgroundAlertDanger, t)!,
      backgroundAlertDangerLight: Color.lerp(
          a.backgroundAlertDangerLight, b.backgroundAlertDangerLight, t)!,
      backgroundAlertWarning:
          Color.lerp(a.backgroundAlertWarning, b.backgroundAlertWarning, t)!,
      backgroundAlertWarningLight: Color.lerp(
          a.backgroundAlertWarningLight, b.backgroundAlertWarningLight, t)!,
      backgroundAlertSuccess:
          Color.lerp(a.backgroundAlertSuccess, b.backgroundAlertSuccess, t)!,
      backgroundAlertSuccessLight: Color.lerp(
          a.backgroundAlertSuccessLight, b.backgroundAlertSuccessLight, t)!,
      backgroundAlertInformation: Color.lerp(
          a.backgroundAlertInformation, b.backgroundAlertInformation, t)!,
      backgroundAlertInformationLight: Color.lerp(
          a.backgroundAlertInformationLight,
          b.backgroundAlertInformationLight,
          t)!,
      backgroundAccentPurple:
          Color.lerp(a.backgroundAccentPurple, b.backgroundAccentPurple, t)!,
      backgroundAccentPurpleLight: Color.lerp(
          a.backgroundAccentPurpleLight, b.backgroundAccentPurpleLight, t)!,
      backgroundAccentPink:
          Color.lerp(a.backgroundAccentPink, b.backgroundAccentPink, t)!,
      backgroundAccentPinkLight: Color.lerp(
          a.backgroundAccentPinkLight, b.backgroundAccentPinkLight, t)!,
      backgroundAccentOrange:
          Color.lerp(a.backgroundAccentOrange, b.backgroundAccentOrange, t)!,
      backgroundAccentOrangeLight: Color.lerp(
          a.backgroundAccentOrangeLight, b.backgroundAccentOrangeLight, t)!,
      backgroundAccentBlue:
          Color.lerp(a.backgroundAccentBlue, b.backgroundAccentBlue, t)!,
      backgroundAccentBlueLight: Color.lerp(
          a.backgroundAccentBlueLight, b.backgroundAccentBlueLight, t)!,
      backgroundAccentGreen:
          Color.lerp(a.backgroundAccentGreen, b.backgroundAccentGreen, t)!,
      backgroundAccentGreenLight: Color.lerp(
          a.backgroundAccentGreenLight, b.backgroundAccentGreenLight, t)!,
      backgroundAccentYellow:
          Color.lerp(a.backgroundAccentYellow, b.backgroundAccentYellow, t)!,
      backgroundAccentYellowLight: Color.lerp(
          a.backgroundAccentYellowLight, b.backgroundAccentYellowLight, t)!,
      backgroundAccentRed:
          Color.lerp(a.backgroundAccentRed, b.backgroundAccentRed, t)!,
      backgroundAccentRedLight: Color.lerp(
          a.backgroundAccentRedLight, b.backgroundAccentRedLight, t)!,
      borderBrand: Color.lerp(a.borderBrand, b.borderBrand, t)!,
      borderPrimary: Color.lerp(a.borderPrimary, b.borderPrimary, t)!,
      borderSecondary: Color.lerp(a.borderSecondary, b.borderSecondary, t)!,
      borderInputDefault:
          Color.lerp(a.borderInputDefault, b.borderInputDefault, t)!,
      borderInputHover: Color.lerp(a.borderInputHover, b.borderInputHover, t)!,
      borderInputFocus: Color.lerp(a.borderInputFocus, b.borderInputFocus, t)!,
      borderInputDisabled:
          Color.lerp(a.borderInputDisabled, b.borderInputDisabled, t)!,
      borderInputActive:
          Color.lerp(a.borderInputActive, b.borderInputActive, t)!,
      borderInputInverse:
          Color.lerp(a.borderInputInverse, b.borderInputInverse, t)!,
      borderAlertDanger:
          Color.lerp(a.borderAlertDanger, b.borderAlertDanger, t)!,
      borderAlertWarning:
          Color.lerp(a.borderAlertWarning, b.borderAlertWarning, t)!,
      borderAlertSuccess:
          Color.lerp(a.borderAlertSuccess, b.borderAlertSuccess, t)!,
      borderAlertInformation:
          Color.lerp(a.borderAlertInformation, b.borderAlertInformation, t)!,
      borderAccentPurple:
          Color.lerp(a.borderAccentPurple, b.borderAccentPurple, t)!,
      borderAccentPink: Color.lerp(a.borderAccentPink, b.borderAccentPink, t)!,
      borderAccentOrange:
          Color.lerp(a.borderAccentOrange, b.borderAccentOrange, t)!,
      borderAccentBlue: Color.lerp(a.borderAccentBlue, b.borderAccentBlue, t)!,
      borderAccentGreen:
          Color.lerp(a.borderAccentGreen, b.borderAccentGreen, t)!,
      borderAccentYellow:
          Color.lerp(a.borderAccentYellow, b.borderAccentYellow, t)!,
      borderAccentRed: Color.lerp(a.borderAccentRed, b.borderAccentRed, t)!,
      contentBrand: Color.lerp(a.contentBrand, b.contentBrand, t)!,
      contentPrimary: Color.lerp(a.contentPrimary, b.contentPrimary, t)!,
      contentSecondary: Color.lerp(a.contentSecondary, b.contentSecondary, t)!,
      contentTertiary: Color.lerp(a.contentTertiary, b.contentTertiary, t)!,
      contentAlwaysWhite:
          Color.lerp(a.contentAlwaysWhite, b.contentAlwaysWhite, t)!,
      contentAlwaysDark:
          Color.lerp(a.contentAlwaysDark, b.contentAlwaysDark, t)!,
      contentInverse: Color.lerp(a.contentInverse, b.contentInverse, t)!,
      contentDisabled: Color.lerp(a.contentDisabled, b.contentDisabled, t)!,
      contentAlertDanger:
          Color.lerp(a.contentAlertDanger, b.contentAlertDanger, t)!,
      contentAlertWarning:
          Color.lerp(a.contentAlertWarning, b.contentAlertWarning, t)!,
      contentAlertSuccess:
          Color.lerp(a.contentAlertSuccess, b.contentAlertSuccess, t)!,
      contentAlertInformation:
          Color.lerp(a.contentAlertInformation, b.contentAlertInformation, t)!,
      contentAccentPurple:
          Color.lerp(a.contentAccentPurple, b.contentAccentPurple, t)!,
      contentAccentPink:
          Color.lerp(a.contentAccentPink, b.contentAccentPink, t)!,
      contentAccentOrange:
          Color.lerp(a.contentAccentOrange, b.contentAccentOrange, t)!,
      contentAccentBlue:
          Color.lerp(a.contentAccentBlue, b.contentAccentBlue, t)!,
      contentAccentGreen:
          Color.lerp(a.contentAccentGreen, b.contentAccentGreen, t)!,
      contentAccentYellow:
          Color.lerp(a.contentAccentYellow, b.contentAccentYellow, t)!,
      contentAccentRed: Color.lerp(a.contentAccentRed, b.contentAccentRed, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BaconColorScheme &&
        other.backgroundBrand == backgroundBrand &&
        other.backgroundBrandLight == backgroundBrandLight &&
        other.backgroundPrimary == backgroundPrimary &&
        other.backgroundSecondary == backgroundSecondary &&
        other.backgroundTertiary == backgroundTertiary &&
        other.backgroundInverse == backgroundInverse &&
        other.backgroundAlwaysWhite == backgroundAlwaysWhite &&
        other.backgroundAlwaysDark == backgroundAlwaysDark &&
        other.backgroundAlertDanger == backgroundAlertDanger &&
        other.backgroundAlertDangerLight == backgroundAlertDangerLight &&
        other.backgroundAlertWarning == backgroundAlertWarning &&
        other.backgroundAlertWarningLight == backgroundAlertWarningLight &&
        other.backgroundAlertSuccess == backgroundAlertSuccess &&
        other.backgroundAlertSuccessLight == backgroundAlertSuccessLight &&
        other.backgroundAlertInformation == backgroundAlertInformation &&
        other.backgroundAlertInformationLight ==
            backgroundAlertInformationLight &&
        other.backgroundAccentPurple == backgroundAccentPurple &&
        other.backgroundAccentPurpleLight == backgroundAccentPurpleLight &&
        other.backgroundAccentPink == backgroundAccentPink &&
        other.backgroundAccentPinkLight == backgroundAccentPinkLight &&
        other.backgroundAccentOrange == backgroundAccentOrange &&
        other.backgroundAccentOrangeLight == backgroundAccentOrangeLight &&
        other.backgroundAccentBlue == backgroundAccentBlue &&
        other.backgroundAccentBlueLight == backgroundAccentBlueLight &&
        other.backgroundAccentGreen == backgroundAccentGreen &&
        other.backgroundAccentGreenLight == backgroundAccentGreenLight &&
        other.backgroundAccentYellow == backgroundAccentYellow &&
        other.backgroundAccentYellowLight == backgroundAccentYellowLight &&
        other.backgroundAccentRed == backgroundAccentRed &&
        other.backgroundAccentRedLight == backgroundAccentRedLight &&
        other.borderBrand == borderBrand &&
        other.borderPrimary == borderPrimary &&
        other.borderSecondary == borderSecondary &&
        other.borderInputDefault == borderInputDefault &&
        other.borderInputHover == borderInputHover &&
        other.borderInputFocus == borderInputFocus &&
        other.borderInputDisabled == borderInputDisabled &&
        other.borderInputActive == borderInputActive &&
        other.borderInputInverse == borderInputInverse &&
        other.borderAlertDanger == borderAlertDanger &&
        other.borderAlertWarning == borderAlertWarning &&
        other.borderAlertSuccess == borderAlertSuccess &&
        other.borderAlertInformation == borderAlertInformation &&
        other.borderAccentPurple == borderAccentPurple &&
        other.borderAccentPink == borderAccentPink &&
        other.borderAccentOrange == borderAccentOrange &&
        other.borderAccentBlue == borderAccentBlue &&
        other.borderAccentGreen == borderAccentGreen &&
        other.borderAccentYellow == borderAccentYellow &&
        other.borderAccentRed == borderAccentRed &&
        other.contentBrand == contentBrand &&
        other.contentPrimary == contentPrimary &&
        other.contentSecondary == contentSecondary &&
        other.contentTertiary == contentTertiary &&
        other.contentAlwaysWhite == contentAlwaysWhite &&
        other.contentAlwaysDark == contentAlwaysDark &&
        other.contentInverse == contentInverse &&
        other.contentDisabled == contentDisabled &&
        other.contentAlertDanger == contentAlertDanger &&
        other.contentAlertWarning == contentAlertWarning &&
        other.contentAlertSuccess == contentAlertSuccess &&
        other.contentAlertInformation == contentAlertInformation &&
        other.contentAccentPurple == contentAccentPurple &&
        other.contentAccentPink == contentAccentPink &&
        other.contentAccentOrange == contentAccentOrange &&
        other.contentAccentBlue == contentAccentBlue &&
        other.contentAccentGreen == contentAccentGreen &&
        other.contentAccentYellow == contentAccentYellow &&
        other.contentAccentRed == contentAccentRed;
  }

  @override
  int get hashCode {
    return backgroundBrand.hashCode ^
        backgroundBrandLight.hashCode ^
        backgroundPrimary.hashCode ^
        backgroundSecondary.hashCode ^
        backgroundTertiary.hashCode ^
        backgroundInverse.hashCode ^
        backgroundAlwaysWhite.hashCode ^
        backgroundAlwaysDark.hashCode ^
        backgroundAlertDanger.hashCode ^
        backgroundAlertDangerLight.hashCode ^
        backgroundAlertWarning.hashCode ^
        backgroundAlertWarningLight.hashCode ^
        backgroundAlertSuccess.hashCode ^
        backgroundAlertSuccessLight.hashCode ^
        backgroundAlertInformation.hashCode ^
        backgroundAlertInformationLight.hashCode ^
        backgroundAccentPurple.hashCode ^
        backgroundAccentPurpleLight.hashCode ^
        backgroundAccentPink.hashCode ^
        backgroundAccentPinkLight.hashCode ^
        backgroundAccentOrange.hashCode ^
        backgroundAccentOrangeLight.hashCode ^
        backgroundAccentBlue.hashCode ^
        backgroundAccentBlueLight.hashCode ^
        backgroundAccentGreen.hashCode ^
        backgroundAccentGreenLight.hashCode ^
        backgroundAccentYellow.hashCode ^
        backgroundAccentYellowLight.hashCode ^
        backgroundAccentRed.hashCode ^
        backgroundAccentRedLight.hashCode ^
        borderBrand.hashCode ^
        borderPrimary.hashCode ^
        borderSecondary.hashCode ^
        borderInputDefault.hashCode ^
        borderInputHover.hashCode ^
        borderInputFocus.hashCode ^
        borderInputDisabled.hashCode ^
        borderInputActive.hashCode ^
        borderInputInverse.hashCode ^
        borderAlertDanger.hashCode ^
        borderAlertWarning.hashCode ^
        borderAlertSuccess.hashCode ^
        borderAlertInformation.hashCode ^
        borderAccentPurple.hashCode ^
        borderAccentPink.hashCode ^
        borderAccentOrange.hashCode ^
        borderAccentBlue.hashCode ^
        borderAccentGreen.hashCode ^
        borderAccentYellow.hashCode ^
        borderAccentRed.hashCode ^
        contentBrand.hashCode ^
        contentPrimary.hashCode ^
        contentSecondary.hashCode ^
        contentTertiary.hashCode ^
        contentAlwaysWhite.hashCode ^
        contentAlwaysDark.hashCode ^
        contentInverse.hashCode ^
        contentDisabled.hashCode ^
        contentAlertDanger.hashCode ^
        contentAlertWarning.hashCode ^
        contentAlertSuccess.hashCode ^
        contentAlertInformation.hashCode ^
        contentAccentPurple.hashCode ^
        contentAccentPink.hashCode ^
        contentAccentOrange.hashCode ^
        contentAccentBlue.hashCode ^
        contentAccentGreen.hashCode ^
        contentAccentYellow.hashCode ^
        contentAccentRed.hashCode;
  }
}
