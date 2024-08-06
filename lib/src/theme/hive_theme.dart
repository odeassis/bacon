import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'components/components.dart';
import 'tokens/tokens.dart';

class HiveTheme extends ThemeExtension<HiveTheme> with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveAlertTheme alertTheme;
  final HiveAvatarTheme avatarTheme;

  HiveTheme({
    required this.tokens,
    HiveAlertTheme? alertTheme,
    HiveAvatarTheme? avatarTheme,
  })  : alertTheme = alertTheme ?? HiveAlertTheme(tokens: tokens),
        avatarTheme = avatarTheme ?? HiveAvatarTheme(tokens: tokens);

  @override
  HiveTheme copyWith({
    HiveTokens? tokens,
    HiveAlertTheme? alertTheme,
    HiveAvatarTheme? avatarTheme,
  }) {
    return HiveTheme(
      tokens: tokens ?? this.tokens,
      alertTheme: alertTheme ?? this.alertTheme,
      avatarTheme: avatarTheme ?? this.avatarTheme,
    );
  }

  @override
  HiveTheme lerp(
    ThemeExtension<HiveTheme>? other,
    double t,
  ) {
    if (other is! HiveTheme) return this;

    return HiveTheme(
      tokens: tokens.lerp(other.tokens, t),
      alertTheme: alertTheme.lerp(other.alertTheme, t),
      avatarTheme: avatarTheme.lerp(other.avatarTheme, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>('tokens', tokens));
    properties
        .add(DiagnosticsProperty<HiveAlertTheme>('alertTheme', alertTheme));
    properties
        .add(DiagnosticsProperty<HiveAvatarTheme>('avatarTheme', avatarTheme));
  }
}

extension HiveThemeExtension on BuildContext {
  HiveTheme? get hiveTheme => Theme.of(this).extension<HiveTheme>();
}
