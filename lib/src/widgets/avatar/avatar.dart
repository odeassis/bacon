import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/avatar/avatar_size_properties.dart';
import 'package:bacon/src/theme/components/avatar/avatar_sizes.dart';
import 'package:bacon/src/utils/extensions.dart';
import 'package:bacon/src/utils/shape_decoration.dart';
import 'package:bacon/src/utils/squircle/squircle_border.dart';
import 'package:bacon/src/widgets/avatar/clipper.dart';
import 'package:flutter/material.dart';

enum BaconAvatarSize {
  xlarge,
  large,
  medium,
  small,
  xsmall,
}

enum BaconBadgeAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class BaconAvatar extends StatelessWidget {
  final bool showBadge;
  final BorderRadiusGeometry? borderRadius;
  final String? semanticLabel;
  final Color? badgeColor;
  final Color? background;
  final double? width;
  final double? height;
  final double? badgeMargin;
  final BaconBadgeAlignment badgeAlignment;
  final double? badgeSize;
  final BaconAvatarSize? size;
  final ImageProvider<Object>? imageProvider;
  final Widget? content;

  const BaconAvatar({
    super.key,
    this.showBadge = false,
    this.borderRadius,
    this.semanticLabel,
    this.badgeColor,
    this.background,
    this.width,
    this.height,
    this.badgeMargin,
    this.badgeAlignment = BaconBadgeAlignment.bottomRight,
    this.badgeSize,
    this.size,
    this.imageProvider,
    this.content,
  });

  Alignment _getAlignment(BuildContext context) {
    final bool isRightToLeft = Directionality.of(context) == TextDirection.rtl;
    if (isRightToLeft) {
      switch (badgeAlignment) {
        case BaconBadgeAlignment.topLeft:
          return Alignment.topRight;
        case BaconBadgeAlignment.topRight:
          return Alignment.topLeft;
        case BaconBadgeAlignment.bottomLeft:
          return Alignment.bottomRight;
        case BaconBadgeAlignment.bottomRight:
          return Alignment.bottomLeft;
        default:
          return Alignment.bottomRight;
      }
    } else {
      switch (badgeAlignment) {
        case BaconBadgeAlignment.topLeft:
          return Alignment.topLeft;
        case BaconBadgeAlignment.topRight:
          return Alignment.topRight;
        case BaconBadgeAlignment.bottomLeft:
          return Alignment.bottomLeft;
        case BaconBadgeAlignment.bottomRight:
          return Alignment.bottomRight;
        default:
          return Alignment.bottomRight;
      }
    }
  }

  BaconAvatarSizeProperties _getAvatarSizes(
    BuildContext context,
    BaconAvatarSize? size,
  ) {
    switch (size) {
      case BaconAvatarSize.xlarge:
        return context.baconTheme?.avatarTheme.sizes.xl ??
            BaconAvatarSizes(tokens: BaconTokens.light).xl;
      case BaconAvatarSize.large:
        return context.baconTheme?.avatarTheme.sizes.lg ??
            BaconAvatarSizes(tokens: BaconTokens.light).lg;
      case BaconAvatarSize.medium:
        return context.baconTheme?.avatarTheme.sizes.md ??
            BaconAvatarSizes(tokens: BaconTokens.light).md;
      case BaconAvatarSize.small:
        return context.baconTheme?.avatarTheme.sizes.sm ??
            BaconAvatarSizes(tokens: BaconTokens.light).sm;
      case BaconAvatarSize.xsmall:
        return context.baconTheme?.avatarTheme.sizes.xs ??
            BaconAvatarSizes(tokens: BaconTokens.light).xs;
      default:
        return context.baconTheme?.avatarTheme.sizes.md ??
            BaconAvatarSizes(tokens: BaconTokens.light).md;
    }
  }

  @override
  Widget build(BuildContext context) {
    final effectiveAvatarSize = _getAvatarSizes(context, size);

    final Color effectiveBackground = background ??
        context.baconTheme?.avatarTheme.colors.background ??
        BaconTokens.light.backgroundColor.brand;

    final effectiveBorderRadius =
        borderRadius ?? effectiveAvatarSize.borderRadius;

    final effectiveBadgeColor = badgeColor ??
        context.baconTheme?.avatarTheme.colors.bodgeColor ??
        BaconTokens.light.backgroundColor.brand;

    final effectiveBadgeSize = badgeSize ?? effectiveAvatarSize.badgeSize;

    final effectiveBadgeMargin = badgeMargin ?? effectiveAvatarSize.badgeMargin;

    final effectiveWidth = width ?? effectiveAvatarSize.avatarSize;

    final effectiveHeight = height ?? effectiveAvatarSize.avatarSize;

    final effectiveTextColor =
        context.baconTheme?.avatarTheme.colors.textColor ??
            BaconTokens.light.contentColor.secondary;

    final resolvedBorderRadius =
        effectiveBorderRadius.resolve(Directionality.of(context));

    final effectiveIconColor =
        context.baconTheme?.avatarTheme.colors.iconColor ??
            BaconTokens.light.contentColor.primary;

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
                //   badgeAlignment: badgeAlignment,
                //   textDirection: Directionality.of(context),
                // ),
                clipper: AvatarClipper(
                  showBadge: showBadge,
                  height: effectiveHeight,
                  width: effectiveWidth,
                  borderRadius: resolvedBorderRadius,
                  badgeSize: effectiveBadgeSize,
                  badgeMarginValue: effectiveBadgeMargin,
                  badgeAlignment: badgeAlignment,
                  textDirection: Directionality.of(context),
                ),
                child: DefaultTextStyle(
                  style: effectiveAvatarSize.textStyle.copyWith(
                    color: effectiveTextColor,
                  ),
                  child: IconTheme(
                    data: IconThemeData(color: effectiveIconColor),
                    child: DecoratedBox(
                      decoration: ShapeDecorationWithPremultipliedAlpha(
                        shape: BaconSquircleBorder(
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
