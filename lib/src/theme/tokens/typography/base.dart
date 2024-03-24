import 'package:bacon/src/theme/tokens/typography/text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseTypography extends ThemeExtension<BaconBaseTypography>
    with DiagnosticableTreeMixin {
  const BaconBaseTypography({
    required this.display,
    required this.headline,
    required this.label,
    required this.paragraph,
  });

  final BaconTextStyles display;
  final BaconTextStyles headline;
  final BaconTextStyles label;
  final BaconTextStyles paragraph;

  @override
  ThemeExtension<BaconBaseTypography> copyWith({
    BaconTextStyles? display,
    BaconTextStyles? headline,
    BaconTextStyles? label,
    BaconTextStyles? paragraph,
  }) {
    return BaconBaseTypography(
      display: display ?? this.display,
      headline: headline ?? this.headline,
      label: label ?? this.label,
      paragraph: paragraph ?? this.paragraph,
    );
  }

  @override
  BaconBaseTypography lerp(
      ThemeExtension<BaconBaseTypography>? other, double t) {
    if (other is! BaconBaseTypography) return this;

    return BaconBaseTypography(
      display: display.lerp(other.display, t),
      headline: display.lerp(other.headline, t),
      label: display.lerp(other.label, t),
      paragraph: display.lerp(other.paragraph, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconBaseTypography"));
    properties.add(DiagnosticsProperty("display", display));
    properties.add(DiagnosticsProperty("headline", headline));
    properties.add(DiagnosticsProperty("label", label));
    properties.add(DiagnosticsProperty("paragraph", paragraph));
  }
}
