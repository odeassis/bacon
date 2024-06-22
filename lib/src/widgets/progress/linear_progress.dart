import 'package:flutter/material.dart';

import '../../../bacon.dart';
import '../../theme/components/progress/linear/linear_progress_size_properties.dart';
import '../../theme/components/progress/linear/linear_progress_sizes.dart';
import '../../utils/shared/common/progress_indicators/linear_progress_indicator.dart';

enum BaconLinearProgressSize {
  x6s,
  x5s,
  x4s,
  x3s,
  x2s,
}

class BaconLinearProgress extends StatelessWidget {
  /// Whether to show the thumb and the pin for the linear progress.
  final bool showPin;

  /// Whether to show the [minLabel] widget for the linear progress.
  final bool showMinLabel;

  /// Whether to show the [maxLabel] widget for the linear progress.
  final bool showMaxLabel;

  /// Whether the pin height is added to the linear progress height.
  /// Applies only when both this and [showPin] are true.
  /// Otherwise, the pin acts as an overlay without affecting the linear progress height.
  final bool pinAffectsHeight;

  /// The border radius of the linear progress.
  final BorderRadiusGeometry? borderRadius;

  /// The color of the linear progress.
  final Color? color;

  /// The background color of the linear progress.
  final Color? backgroundColor;

  /// The text color of the [minLabel] and [maxLabel] widgets.
  final Color? textColor;

  /// The height of the linear progress.
  final double? height;

  /// The vertical gap between the linear progress and the [minLabel] and [maxLabel] widgets.
  ///
  /// Has effect only if [showMinLabel] and [showMaxLabel] are true.
  final double? verticalGap;

  /// The progress value of the linear progress.
  final double value;

  /// The size of the linear progress.
  final BaconLinearProgressSize? linearProgressSize;

  /// The styling options for the linear progress pin.
  // final PinStyle? pinStyle;

  /// The semantic label for the linear progress.
  final String? semanticLabel;

  /// The widget to display the minimum progress value of the linear progress.
  final Widget? minLabel;

  /// The widget to display the maximum progress value of the linear progress.
  final Widget? maxLabel;

  /// Creates a Bacon Design linear progress.
  const BaconLinearProgress({
    super.key,
    this.showPin = false,
    this.showMinLabel = false,
    this.showMaxLabel = false,
    this.pinAffectsHeight = true,
    this.borderRadius,
    this.color,
    this.backgroundColor,
    this.textColor,
    this.height,
    this.verticalGap,
    required this.value,
    this.linearProgressSize,
    // this.pinStyle,
    this.semanticLabel,
    this.minLabel,
    this.maxLabel,
  });

  BaconLinearProgressSizeProperties _getBaconProgressSize(
    BuildContext context,
    BaconLinearProgressSize? baconProgressSize,
  ) {
    switch (baconProgressSize) {
      case BaconLinearProgressSize.x6s:
        return context.baconTheme?.linearProgressTheme.sizes.x6s ??
            BaconLinearProgressSizes(tokens: BaconTokens.light).x6s;
      case BaconLinearProgressSize.x5s:
        return context.baconTheme?.linearProgressTheme.sizes.x5s ??
            BaconLinearProgressSizes(tokens: BaconTokens.light).x5s;
      case BaconLinearProgressSize.x4s:
        return context.baconTheme?.linearProgressTheme.sizes.x4s ??
            BaconLinearProgressSizes(tokens: BaconTokens.light).x4s;
      case BaconLinearProgressSize.x3s:
        return context.baconTheme?.linearProgressTheme.sizes.x3s ??
            BaconLinearProgressSizes(tokens: BaconTokens.light).x3s;
      case BaconLinearProgressSize.x2s:
        return context.baconTheme?.linearProgressTheme.sizes.x2s ??
            BaconLinearProgressSizes(tokens: BaconTokens.light).x2s;
      default:
        return context.baconTheme?.linearProgressTheme.sizes.x4s ??
            BaconLinearProgressSizes(tokens: BaconTokens.light).x4s;
    }
  }

  @override
  Widget build(BuildContext context) {
    final BaconLinearProgressSizeProperties effectiveProgressSize =
        _getBaconProgressSize(context, linearProgressSize);

    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? effectiveProgressSize.borderRadius;

    // This is used to ensure that the corners of the progress bar properly touch the thumb with bigger bar variants.
    final BorderRadiusGeometry progressRadius = switch (effectiveBorderRadius) {
      BorderRadiusDirectional() when showPin == true =>
        BorderRadiusDirectional.only(
          topStart: effectiveBorderRadius.topStart,
          bottomStart: effectiveBorderRadius.bottomStart,
        ),
      BorderRadius() when showPin == true => BorderRadiusDirectional.only(
          topStart: effectiveBorderRadius.topLeft,
          bottomStart: effectiveBorderRadius.bottomLeft,
        ),
      _ => effectiveBorderRadius,
    };

    final Color effectiveColor = color ??
        context.baconTheme?.linearProgressTheme.colors.color ??
        BaconTokens.light.modes.accent.blue;

    final Color effectiveBackgroundColor = backgroundColor ??
        context.baconTheme?.linearProgressTheme.colors.backgroundColor ??
        BaconTokens.light.modes.accent.green;

    final Color effectiveTextColor = textColor ??
        context.baconTheme?.linearProgressTheme.colors.textColor ??
        BaconTokens.light.modes.accent.purple;

    final double effectiveHeight =
        height ?? effectiveProgressSize.progressHeight;

    final double effectiveVerticalGap =
        verticalGap ?? effectiveProgressSize.verticalGap;

    final double effectiveThumbSizeValue =
        // ignore: deprecated_member_use_from_same_package
        // (pinStyle?.thumbSizeValue ?? pinStyle?.thumbWidth) ??
        effectiveProgressSize.thumbSizeValue;

    // final double effectivePinWidth = pinStyle?.pinWidth ??
    //     context.baconTheme?.progressPinTheme.properties.pinWidth ??
    //     36;

    // final double effectivePinDistance = pinStyle?.pinDistance ??
    //     context.baconTheme?.progressPinTheme.properties.pinDistance ??
    //     BaconSizes.sizes.x5s;

    // final double effectivePinArrowHeight = pinStyle?.arrowHeight ??
    //     context.baconTheme?.progressPinTheme.properties.arrowHeight ??
    //     6;

    final TextStyle effectiveTextStyle = effectiveProgressSize.textStyle;

    final double resolvedPaddingValue =
        effectiveThumbSizeValue - effectiveHeight > 0
            ? effectiveThumbSizeValue / 2 - effectiveHeight / 2
            : 0;

    // final double heightWithPin = effectivePinWidth +
    //     effectivePinArrowHeight +
    //     effectivePinDistance +
    //     effectiveThumbSizeValue;

    Widget child = BaconLinearProgressIndicator(
      value: value,
      color: effectiveColor,
      backgroundColor: effectiveBackgroundColor,
      containerRadius: effectiveBorderRadius,
      progressRadius: showPin ? progressRadius : effectiveBorderRadius,
      minHeight: effectiveHeight,
    );

    // if (showPin) {
    //   child = BaconProgressPin(
    //     progressValue: value,
    //     pinText: '${(value * 100).round()}%',
    //     pinStyle: pinStyle?.copyWith(thumbSizeValue: effectiveThumbSizeValue),
    //     child: child,
    //   );
    // }

    if (showMinLabel || showMaxLabel) {
      child = Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (showMinLabel)
                Expanded(
                  child: DefaultTextStyle(
                    style:
                        effectiveTextStyle.copyWith(color: effectiveTextColor),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: minLabel ?? const Text("0%"),
                    ),
                  ),
                ),
              if (showMaxLabel)
                Expanded(
                  child: DefaultTextStyle(
                    style:
                        effectiveTextStyle.copyWith(color: effectiveTextColor),
                    child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: maxLabel ?? const Text("100%"),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: effectiveVerticalGap),
          child,
        ],
      );
    }

    // if (showPin && pinAffectsHeight) {
    //   child = Container(
    //     height: heightWithPin,
    //     padding: EdgeInsets.only(bottom: resolvedPaddingValue),
    //     alignment: Alignment.bottomCenter,
    //     child: child,
    //   );
    // }

    return Semantics(
      label: semanticLabel,
      value: "${value * 100}%",
      child: child,
    );
  }
}
