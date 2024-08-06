import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'text_styles.dart';

@immutable
class HiveTypographyTokens extends ThemeExtension<HiveTypographyTokens>
    with DiagnosticableTreeMixin {
  final HiveTextStyles display;
  final HiveTextStyles headline;
  final HiveTextStyles paragraph;
  final HiveTextStyles label;
  final HiveTextStyles link;

  const HiveTypographyTokens({
    required this.display,
    required this.headline,
    required this.paragraph,
    required this.label,
    required this.link,
  });

  @override
  ThemeExtension<HiveTypographyTokens> copyWith({
    HiveTextStyles? display,
    HiveTextStyles? headline,
    HiveTextStyles? label,
    HiveTextStyles? paragraph,
    HiveTextStyles? link,
  }) {
    return HiveTypographyTokens(
      display: display ?? this.display,
      headline: headline ?? this.headline,
      label: label ?? this.label,
      paragraph: paragraph ?? this.paragraph,
      link: link ?? this.link,
    );
  }

  @override
  HiveTypographyTokens lerp(
      ThemeExtension<HiveTypographyTokens>? other, double t) {
    if (other is! HiveTypographyTokens) return this;

    return HiveTypographyTokens(
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
    properties.add(DiagnosticsProperty("type", "HiveTypographyTokens"));
    properties.add(DiagnosticsProperty("display", display));
    properties.add(DiagnosticsProperty("headline", headline));
    properties.add(DiagnosticsProperty("paragraph", paragraph));
    properties.add(DiagnosticsProperty("label", label));
    properties.add(DiagnosticsProperty("link", link));
  }
}
