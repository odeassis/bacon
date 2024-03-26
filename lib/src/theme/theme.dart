import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/badge/badge_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconTheme extends ThemeExtension<BaconTheme>
    with DiagnosticableTreeMixin {
  final BaconTokes tokens;
  final BaconBadgeTheme badgeTheme;

  BaconTheme({
    required this.tokens,
    BaconBadgeTheme? badgeTheme,
  }) : badgeTheme = badgeTheme ?? BaconBadgeTheme(tokens: tokens);

  @override
  BaconTheme copyWith({
    BaconTokes? tokens,
    BaconBadgeTheme? badgeTheme,
  }) {
    return BaconTheme(
      tokens: tokens ?? this.tokens,
      badgeTheme: badgeTheme ?? this.badgeTheme,
    );
  }

  @override
  BaconTheme lerp(
    ThemeExtension<BaconTheme>? other,
    double t,
  ) {
    if (other is! BaconTheme) return this;

    return BaconTheme(
      tokens: tokens.lerp(other.tokens, t),
      badgeTheme: badgeTheme.lerp(other.badgeTheme, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconTheme"));
    properties.add(DiagnosticsProperty<BaconTokes>('tokens', tokens));
    properties
        .add(DiagnosticsProperty<BaconBadgeTheme>('badgeTheme', badgeTheme));
  }
}

extension BaconThemeB on BuildContext {
  BaconTheme? get baconTheme => Theme.of(this).extension<BaconTheme>();

  BaconBaseTypography? get baconTypography => baconTheme?.tokens.typography;
  BaconBaseColor? get baconBgColors => baconTheme?.tokens.backgroundColor;
  BaconBaseColor? get baconBorderColors => baconTheme?.tokens.borderColor;
  BaconBaseColor? get baconContentColors => baconTheme?.tokens.contentColor;
}
