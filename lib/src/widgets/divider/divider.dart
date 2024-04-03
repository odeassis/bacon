import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/divider/divider_sizes.dart';
import 'package:bacon/src/utils/dotted_line_painter.dart';
import 'package:flutter/material.dart';

/// Widget to display a BaconDivider, which can be a solid line or a dotted line
class BaconDivider extends StatelessWidget {
  /// Indicates if the divider should be dotted or solid
  final bool dotted;

  /// Widget to display in the middle of the divider
  final Widget? icon;

  /// Widget to display in the middle of the divider
  final Widget? text;

  /// Thickness of the divider line
  final double? thickness;

  /// Distance to inset the leading edge of the divider
  final double? indent;

  /// Distance to inset the trailing edge of the divider
  final double? endIndent;

  /// Color of the divider line
  final Color? color;

  final Color? textColor;

  final Color? iconColor;

  const BaconDivider({
    super.key,
    this.dotted = false,
    this.text,
    this.icon,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
    this.textColor,
    this.iconColor,
  }) : assert(!(text != null && icon != null),
            "Only either text or icon can be provided, not both.");

  @override
  Widget build(BuildContext context) {
    final BaconDividerSizes effectiveDividerSizes =
        context.baconTheme?.dividerTheme.sizes ??
            BaconDividerSizes(tokens: BaconTokens.light);

    final Color effectiveColor = color ??
        context.baconTheme?.dividerTheme.colors.dividerColor ??
        BaconTokens.light.modes.border.secondary;

    final Color effectiveTextColor = textColor ??
        context.baconTheme?.dividerTheme.colors.textColor ??
        BaconTokens.light.modes.content.secondary;

    final Color effectiveIconColor = iconColor ??
        context.baconTheme?.dividerTheme.colors.iconColor ??
        BaconTokens.light.modes.content.secondary;

    final double effectiveGap = effectiveDividerSizes.sm.gap;

    final TextStyle effectiveTextStyle = effectiveDividerSizes.sm.textStyle;

    Widget middleWidget() {
      return icon != null
          ? IconTheme(
              data: IconThemeData(
                color: effectiveIconColor,
              ),
              child: icon!,
            )
          : DefaultTextStyle(
              style: effectiveTextStyle.copyWith(
                color: effectiveTextColor,
              ),
              child: text!,
            );
    }

    if (icon == null && text == null) {
      return dotted
          ? CustomPaint(
              size: Size.fromHeight(thickness ?? 1.0),
              painter: DottedLinePainter(color: effectiveColor),
            )
          : Divider(
              thickness: thickness,
              indent: indent,
              endIndent: endIndent,
              color: effectiveColor,
            );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: effectiveGap),
            child: dotted
                ? CustomPaint(
                    size: Size.fromHeight(thickness ?? 1.0),
                    painter: DottedLinePainter(color: effectiveColor),
                  )
                : Divider(
                    color: effectiveColor,
                    thickness: thickness,
                    indent: indent,
                    endIndent: endIndent,
                  ),
          ),
        ),
        middleWidget(),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: effectiveGap),
            child: dotted
                ? CustomPaint(
                    size: Size.fromHeight(thickness ?? 1.0),
                    painter: DottedLinePainter(color: effectiveColor),
                  )
                : Divider(
                    thickness: thickness,
                    color: effectiveColor,
                    indent: indent,
                    endIndent: endIndent,
                  ),
          ),
        ),
      ],
    );
  }
}
