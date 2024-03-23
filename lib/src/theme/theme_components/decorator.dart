import 'dart:ui';

import 'package:bacon/src/theme/theme.dart';
import 'package:flutter/material.dart';

/// An immutable border for decorative purposes.
///
/// This class represents a decorative border with properties such as width,
/// color, border radius, and padding. Instances of this class are immutable,
/// meaning that once created, their values cannot be changed.
@immutable
class BaconBorder {
  /// Creates a BaconBorder with the given properties.
  ///
  /// The [width] parameter specifies the width of the border.
  ///
  /// The [color] parameter specifies the color of the border.
  ///
  /// The [borderRadius] parameter specifies the radius of the border corners.
  ///
  /// The [padding] parameter specifies the padding inside the border.
  const BaconBorder({
    this.width,
    this.color,
    this.borderRadius,
    this.padding,
  });

  /// A special instance representing no border.
  static const BaconBorder none = BaconBorder();

  /// The width of the border.
  final double? width;

  /// The color of the border.
  final Color? color;

  /// The radius of the border corners.
  final BorderRadiusGeometry? borderRadius;

  /// The padding inside the border.
  final EdgeInsets? padding;

  /// Interpolates between two BaconBorder objects.
  ///
  /// The [a] parameter is the first BaconBorder.
  ///
  /// The [b] parameter is the second BaconBorder.
  ///
  /// The [t] parameter is a value between 0.0 and 1.0 representing the
  /// proportion of the interpolation.
  ///
  /// Returns a new BaconBorder that is the result of linear interpolation
  /// between [a] and [b].
  static BaconBorder? lerp(
    BaconBorder? a,
    BaconBorder? b,
    double t,
  ) {
    if (a == null && b == null) return null;
    return BaconBorder(
      width: lerpDouble(a?.width, b?.width, t),
      color: Color.lerp(a?.color, b?.color, t),
      borderRadius: BorderRadiusGeometry.lerp(
        a?.borderRadius,
        b?.borderRadius,
        t,
      ),
      padding: EdgeInsets.lerp(
        a?.padding,
        b?.padding,
        t,
      ),
    );
  }

  BaconBorder copyWith({
    double? width,
    Color? color,
    BorderRadiusGeometry? borderRadius,
    EdgeInsets? padding,
  }) {
    return BaconBorder(
      width: width ?? this.width,
      color: color ?? this.color,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
    );
  }

  /// Overrides the equality operator to compare BaconBorder objects.
  ///
  /// Two BaconBorder objects are considered equal if they have the same
  /// values for width, color, borderRadius, and padding.
  ///
  /// Returns true if the objects are equal, otherwise returns false.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BaconBorder &&
        other.width == width &&
        other.color == color &&
        other.borderRadius == borderRadius &&
        other.padding == padding;
  }

  /// Overrides the hashCode getter to return the hash code for BaconBorder.
  ///
  /// The hash code is computed by combining the hash codes of width, color,
  /// borderRadius, and padding using the XOR operator (^).
  ///
  /// Returns the hash code for the BaconBorder object.
  @override
  int get hashCode {
    return width.hashCode ^
        color.hashCode ^
        borderRadius.hashCode ^
        padding.hashCode;
  }
}

@immutable
class BaconDecoration {
  const BaconDecoration({
    this.merge = true,
    this.labelStyle,
    this.errorLabelStyle,
    this.border,
    this.focusedBorder,
    this.errorStyle,
    this.placeholderStyle,
    this.descriptionStyle,
    this.labelPadding,
    this.descriptionPadding,
    this.errorPadding,
  });

  static const BaconDecoration none = BaconDecoration(merge: false);

  final bool merge;
  final TextStyle? labelStyle;
  final TextStyle? errorLabelStyle;
  final BaconBorder? border;
  final BaconBorder? focusedBorder;
  final TextStyle? errorStyle;
  final TextStyle? placeholderStyle;
  final TextStyle? descriptionStyle;
  final EdgeInsets? labelPadding;
  final EdgeInsets? descriptionPadding;
  final EdgeInsets? errorPadding;

  static BaconDecoration lerp(
    BaconDecoration? a,
    BaconDecoration? b,
    double t,
  ) {
    return BaconDecoration(
      labelStyle: TextStyle.lerp(a?.labelStyle, b?.labelStyle, t),
      errorLabelStyle:
          TextStyle.lerp(a?.errorLabelStyle, b?.errorLabelStyle, t),
      border: BaconBorder.lerp(a?.border, b?.border, t),
      focusedBorder: BaconBorder.lerp(a?.focusedBorder, b?.focusedBorder, t),
      errorStyle: TextStyle.lerp(a?.errorStyle, b?.errorStyle, t),
      placeholderStyle:
          TextStyle.lerp(a?.placeholderStyle, b?.placeholderStyle, t),
      descriptionStyle:
          TextStyle.lerp(a?.descriptionStyle, b?.descriptionStyle, t),
      labelPadding: EdgeInsets.lerp(a?.labelPadding, b?.labelPadding, t),
      descriptionPadding:
          EdgeInsets.lerp(a?.descriptionPadding, b?.descriptionPadding, t),
      errorPadding: EdgeInsets.lerp(a?.errorPadding, b?.errorPadding, t),
    );
  }

  BaconDecoration mergeWith(BaconDecoration? other) {
    if (other == null) return this;
    if (!other.merge) return other;
    return BaconDecoration(
      labelStyle: other.labelStyle ?? labelStyle,
      errorLabelStyle: other.errorLabelStyle ?? errorLabelStyle,
      border: other.border ?? border,
      focusedBorder: other.focusedBorder ?? focusedBorder,
      errorStyle: other.errorStyle ?? errorStyle,
      placeholderStyle: other.placeholderStyle ?? placeholderStyle,
      descriptionStyle: other.descriptionStyle ?? descriptionStyle,
      labelPadding: other.labelPadding ?? labelPadding,
      descriptionPadding: other.descriptionPadding ?? descriptionPadding,
      errorPadding: other.errorPadding ?? errorPadding,
    );
  }

  BaconDecoration copyWith({
    TextStyle? labelStyle,
    TextStyle? errorLabelStyle,
    BaconBorder? border,
    BaconBorder? focusedBorder,
    TextStyle? errorStyle,
    TextStyle? placeholderStyle,
    TextStyle? descriptionStyle,
    EdgeInsets? labelPadding,
    EdgeInsets? descriptionPadding,
    EdgeInsets? errorPadding,
  }) {
    return BaconDecoration(
      merge: merge,
      labelStyle: labelStyle ?? this.labelStyle,
      errorLabelStyle: errorLabelStyle ?? this.errorLabelStyle,
      border: border ?? this.border,
      focusedBorder: focusedBorder ?? this.focusedBorder,
      errorStyle: errorStyle ?? this.errorStyle,
      placeholderStyle: placeholderStyle ?? this.placeholderStyle,
      descriptionStyle: descriptionStyle ?? this.descriptionStyle,
      labelPadding: labelPadding ?? this.labelPadding,
      descriptionPadding: descriptionPadding ?? this.descriptionPadding,
      errorPadding: errorPadding ?? this.errorPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BaconDecoration &&
        other.labelStyle == labelStyle &&
        other.errorLabelStyle == errorLabelStyle &&
        other.border == border &&
        other.focusedBorder == focusedBorder &&
        other.errorStyle == errorStyle &&
        other.placeholderStyle == placeholderStyle &&
        other.descriptionStyle == descriptionStyle &&
        other.labelPadding == labelPadding &&
        other.descriptionPadding == descriptionPadding &&
        other.errorPadding == errorPadding;
  }

  @override
  int get hashCode {
    return labelStyle.hashCode ^
        errorLabelStyle.hashCode ^
        border.hashCode ^
        focusedBorder.hashCode ^
        errorStyle.hashCode ^
        placeholderStyle.hashCode ^
        descriptionStyle.hashCode ^
        labelPadding.hashCode ^
        descriptionPadding.hashCode ^
        errorPadding.hashCode;
  }
}

class BaconDecorator extends StatelessWidget {
  const BaconDecorator({
    super.key,
    required this.child,
    this.decoration,
    this.isEmpty = false,
    this.isFocused = false,
    this.hasError = false,
    this.label,
    this.description,
    this.error,
    this.placeholder,
  });

  // The child widget to decorate.
  final Widget child;

  // The decoration to apply to the child.
  final BaconDecoration? decoration;
  final bool isEmpty;
  final bool isFocused;
  final bool hasError;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context) {
    final theme = BaconTheme.of(context);
    final effectiveDecoration = decoration ?? theme.decoration;
    final border = isFocused
        ? effectiveDecoration.focusedBorder
        : effectiveDecoration.border;

    final TextStyle effectiveLabelStyle;
    final effectiveErrorStyle = effectiveDecoration.errorStyle ??
        theme.textTheme.labelSmall.copyWith(
          color: theme.colorScheme.contentAlertDanger,
        );

    if (!hasError) {
      effectiveLabelStyle = effectiveDecoration.labelStyle ??
          theme.textTheme.labelSmall.copyWith(
            color: theme.colorScheme.contentPrimary,
          );
    } else {
      effectiveLabelStyle = effectiveDecoration.errorLabelStyle ??
          theme.textTheme.labelSmall.copyWith(
            color: theme.colorScheme.contentAlertDanger,
          );
    }

    final effectivePlaceholderStyle =
        effectiveDecoration.placeholderStyle ?? theme.textTheme.labelSmall;

    return Container(
      decoration: BoxDecoration(
        border: border?.width == null && border?.color == null
            ? null
            : Border.all(
                color: border?.color ?? theme.colorScheme.borderPrimary,
                width: border?.width ?? 1.0,
              ),
        borderRadius: border?.borderRadius,
      ),
      padding: border?.padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Padding(
              padding: effectiveDecoration.labelPadding ??
                  const EdgeInsets.only(bottom: 8),
              child: DefaultTextStyle(
                style: effectiveLabelStyle,
                child: label!,
              ),
            ),
          Stack(
            children: [
              if (isEmpty && placeholder != null)
                DefaultTextStyle(
                  style: effectivePlaceholderStyle,
                  child: placeholder!,
                ),
              child,
            ],
          ),
          if (description != null)
            Padding(
              padding: effectiveDecoration.descriptionPadding ??
                  const EdgeInsets.only(top: 8),
              child: DefaultTextStyle(
                style: effectiveDecoration.descriptionStyle ??
                    theme.textTheme.labelXSmall,
                child: description!,
              ),
            ),
          if (error != null)
            Padding(
              padding: effectiveDecoration.errorPadding ??
                  const EdgeInsets.only(top: 8),
              child: DefaultTextStyle(
                style: effectiveErrorStyle,
                child: error!,
              ),
            ),
        ],
      ),
    );
  }
}
