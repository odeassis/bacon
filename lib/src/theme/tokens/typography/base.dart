import 'package:bacon/src/theme/tokens/typography/text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseTypography extends ThemeExtension<BaconBaseTypography>
    with DiagnosticableTreeMixin {
  final BaconTextStyles display;
  final BaconTextStyles headline;
  final BaconTextStyles paragraph;
  final BaconTextStyles label;
  final BaconTextStyles link;

  const BaconBaseTypography({
    required this.display,
    required this.headline,
    required this.paragraph,
    required this.label,
    required this.link,
  });

  @override
  ThemeExtension<BaconBaseTypography> copyWith({
    BaconTextStyles? display,
    BaconTextStyles? headline,
    BaconTextStyles? label,
    BaconTextStyles? paragraph,
    BaconTextStyles? link,
  }) {
    return BaconBaseTypography(
      display: display ?? this.display,
      headline: headline ?? this.headline,
      label: label ?? this.label,
      paragraph: paragraph ?? this.paragraph,
      link: link ?? this.link,
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
      link: display.lerp(other.link, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconBaseTypography"));
    properties.add(DiagnosticsProperty("display", display));
    properties.add(DiagnosticsProperty("headline", headline));
    properties.add(DiagnosticsProperty("paragraph", paragraph));
    properties.add(DiagnosticsProperty("label", label));
    properties.add(DiagnosticsProperty("link", link));
  }
}
