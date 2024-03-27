import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/avatar/avatar_theme.dart';
import 'package:bacon/src/theme/components/badge/badge_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconTheme extends ThemeExtension<BaconTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconBadgeTheme badgeTheme;
  final BaconAvatarTheme avatarTheme;

  BaconTheme({
    required this.tokens,
    BaconBadgeTheme? badgeTheme,
    BaconAvatarTheme? avatarTheme,
  })  : badgeTheme = badgeTheme ?? BaconBadgeTheme(tokens: tokens),
        avatarTheme = avatarTheme ?? BaconAvatarTheme(tokens: tokens);

  @override
  BaconTheme copyWith({
    BaconTokens? tokens,
    BaconBadgeTheme? badgeTheme,
    BaconAvatarTheme? avatarTheme,
  }) {
    return BaconTheme(
      tokens: tokens ?? this.tokens,
      badgeTheme: badgeTheme ?? this.badgeTheme,
      avatarTheme: avatarTheme ?? this.avatarTheme,
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
      avatarTheme: avatarTheme.lerp(other.avatarTheme, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconTheme"));
    properties.add(DiagnosticsProperty<BaconTokens>('tokens', tokens));
    properties
        .add(DiagnosticsProperty<BaconBadgeTheme>('badgeTheme', badgeTheme));
    properties
        .add(DiagnosticsProperty<BaconAvatarTheme>('avatarTheme', avatarTheme));
  }
}

extension BaconThemeB on BuildContext {
  BaconTheme? get baconTheme => Theme.of(this).extension<BaconTheme>();

  BaconBaseTypography? get baconTypography => baconTheme?.tokens.typography;
  BaconBaseColor? get baconBgColors => baconTheme?.tokens.backgroundColor;
  BaconBaseColor? get baconBorderColors => baconTheme?.tokens.borderColor;
  BaconBaseColor? get baconContentColors => baconTheme?.tokens.contentColor;
}
