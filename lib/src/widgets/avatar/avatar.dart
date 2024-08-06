import 'package:flutter/material.dart';

import '../../theme/components/components.dart';
import '../../theme/hive_theme.dart';
import '../../theme/tokens/hive_tokens.dart';
import '../../utils/utils.dart' as utils;

enum AvatarSize {
  xLarge,
  large,
  medium,
  small,
  xSmall,
}

enum AvatarBadgeAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class HiveAvatar extends StatelessWidget {
  final bool showBadge;
  final BorderRadiusGeometry? borderRadius;
  final String? semanticLabel;
  final Color? badgeColor;
  final Color? background;
  final double? width;
  final double? height;
  final double? badgeMargin;
  final AvatarBadgeAlignment avatarBadgeAlignment;
  final double? badgeSize;
  final AvatarSize? size;
  final ImageProvider<Object>? imageProvider;
  final Widget? content;

  const HiveAvatar({
    super.key,
    this.showBadge = false,
    this.borderRadius,
    this.semanticLabel,
    this.badgeColor,
    this.background,
    this.width,
    this.height,
    this.badgeMargin,
    this.avatarBadgeAlignment = AvatarBadgeAlignment.bottomRight,
    this.badgeSize,
    this.size,
    this.imageProvider,
    this.content,
  });

  Alignment _getAlignment(BuildContext context) {
    final bool isRightToLeft = Directionality.of(context) == TextDirection.rtl;
    if (isRightToLeft) {
      switch (avatarBadgeAlignment) {
        case AvatarBadgeAlignment.topLeft:
          return Alignment.topRight;
        case AvatarBadgeAlignment.topRight:
          return Alignment.topLeft;
        case AvatarBadgeAlignment.bottomLeft:
          return Alignment.bottomRight;
        case AvatarBadgeAlignment.bottomRight:
          return Alignment.bottomLeft;
        default:
          return Alignment.bottomRight;
      }
    } else {
      switch (avatarBadgeAlignment) {
        case AvatarBadgeAlignment.topLeft:
          return Alignment.topLeft;
        case AvatarBadgeAlignment.topRight:
          return Alignment.topRight;
        case AvatarBadgeAlignment.bottomLeft:
          return Alignment.bottomLeft;
        case AvatarBadgeAlignment.bottomRight:
          return Alignment.bottomRight;
        default:
          return Alignment.bottomRight;
      }
    }
  }

  HiveAvatarSizeProperties _getHiveAvatarSizes(
    BuildContext context,
    AvatarSize? size,
  ) {
    switch (size) {
      case AvatarSize.xLarge:
        return context.hiveTheme?.avatarTheme.sizes.xl ??
            HiveAvatarSizes(tokens: HiveTokens.light).xl;
      case AvatarSize.large:
        return context.hiveTheme?.avatarTheme.sizes.lg ??
            HiveAvatarSizes(tokens: HiveTokens.light).lg;
      case AvatarSize.medium:
        return context.hiveTheme?.avatarTheme.sizes.md ??
            HiveAvatarSizes(tokens: HiveTokens.light).md;
      case AvatarSize.small:
        return context.hiveTheme?.avatarTheme.sizes.sm ??
            HiveAvatarSizes(tokens: HiveTokens.light).sm;
      case AvatarSize.xSmall:
        return context.hiveTheme?.avatarTheme.sizes.xs ??
            HiveAvatarSizes(tokens: HiveTokens.light).xs;
      default:
        return context.hiveTheme?.avatarTheme.sizes.md ??
            HiveAvatarSizes(tokens: HiveTokens.light).md;
    }
  }

  @override
  Widget build(BuildContext context) {
    final effectiveAvatarSize = _getHiveAvatarSizes(context, size);

    final Color effectiveBackground = background ??
        context.hiveTheme?.avatarTheme.colors.background ??
        HiveTokens.light.modes.background.primary;

    final effectiveBorderRadius =
        borderRadius ?? effectiveAvatarSize.borderRadius;

    final effectiveBadgeColor = badgeColor ??
        context.hiveTheme?.avatarTheme.colors.bodgeColor ??
        HiveTokens.light.modes.background.brand;

    final effectiveBadgeSize = badgeSize ?? effectiveAvatarSize.badgeSize;

    final effectiveBadgeMargin = badgeMargin ?? effectiveAvatarSize.badgeMargin;

    final effectiveWidth = width ?? effectiveAvatarSize.avatarSize;

    final effectiveHeight = height ?? effectiveAvatarSize.avatarSize;

    final effectiveTextColor =
        context.hiveTheme?.avatarTheme.colors.textColor ??
            HiveTokens.light.modes.content.secondary;

    final resolvedBorderRadius =
        effectiveBorderRadius.resolve(Directionality.of(context));

    final effectiveIconColor =
        context.hiveTheme?.avatarTheme.colors.iconColor ??
            HiveTokens.light.modes.content.primary;

    return Semantics(
      label: semanticLabel,
      image: imageProvider != null,
      focusable: false,
      button: false,
      child: SizedBox(
        width: effectiveWidth,
        height: effectiveHeight,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipPath(
                // BUG: The clipper is not working as expected. not work properly on mobile web/PWA
                // This is a workaround to fix the issue
                //clipper: kIsWeb &&
                //         MediaQueryData.fromView(View.of(context)).size.width <
                //             500
                //     ? null
                //     : AvatarClipper(
                //   showBadge: showBadge,
                //   height: effectiveHeight,
                //   width: effectiveWidth,
                //   borderRadius: resolveBorderRadius,
                //   badgeSize: effectiveBadgeSize,
                //   badgeMarginValue: effectiveBadgeMargin,
                //   AvatarBadgeAlignment: AvatarBadgeAlignment,
                //   textDirection: Directionality.of(context),
                // ),
                clipper: utils.AvatarClipper(
                  showBadge: showBadge,
                  height: effectiveHeight,
                  width: effectiveWidth,
                  borderRadius: resolvedBorderRadius,
                  badgeSize: effectiveBadgeSize,
                  badgeMarginValue: effectiveBadgeMargin,
                  badgeAlignment: avatarBadgeAlignment,
                  textDirection: Directionality.of(context),
                ),
                child: DefaultTextStyle(
                  style: effectiveAvatarSize.textStyle.copyWith(
                    color: effectiveTextColor,
                  ),
                  child: IconTheme(
                    data: IconThemeData(color: effectiveIconColor),
                    child: DecoratedBox(
                      decoration: utils.ShapeDecorationWithPremultipliedAlpha(
                        shape: utils.HiveSquircleBorder(
                          borderRadius: resolvedBorderRadius
                              .squircleBorderRadius(context),
                        ),
                        color: effectiveBackground,
                        image: imageProvider != null
                            ? DecorationImage(
                                image: imageProvider!, fit: BoxFit.cover)
                            : null,
                      ),
                      child: Center(
                        child: content,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (showBadge)
              Align(
                alignment: _getAlignment(context),
                child: Container(
                  height: effectiveBadgeSize,
                  width: effectiveBadgeSize,
                  decoration: BoxDecoration(
                    color: effectiveBadgeColor,
                    borderRadius: BorderRadius.circular(effectiveBadgeSize / 2),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
