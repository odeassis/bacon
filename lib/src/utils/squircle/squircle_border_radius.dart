// ignore_for_file: overridden_fields, unused_element

import 'package:flutter/material.dart';

import 'squircle.dart';

class HiveSquircleBorderRadius extends BorderRadius {
  /// The border radius with zero radii.
  static const HiveSquircleBorderRadius zero =
      HiveSquircleBorderRadius.all(HiveSquircleRadius.zero);

  /// The top-left [HiveSquircleRadius].
  @override
  final HiveSquircleRadius topLeft;

  /// The top-right [HiveSquircleRadius].
  @override
  final HiveSquircleRadius topRight;

  /// The bottom-left [HiveSquircleRadius].
  @override
  final HiveSquircleRadius bottomLeft;

  /// The bottom-right [HiveSquircleRadius].
  @override
  final HiveSquircleRadius bottomRight;

  HiveSquircleBorderRadius({
    required double cornerRadius,
    // The value of 1 or 1.0 leads to NaN error in mobile web/PWA. Hence, we use 0.9 instead to avoid this issue.
    double cornerSmoothing = 0.9,
  }) : this.only(
          topLeft: HiveSquircleRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          topRight: HiveSquircleRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          bottomLeft: HiveSquircleRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          bottomRight: HiveSquircleRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
        );

  /// Creates a border radius with all radii set to [radius].
  const HiveSquircleBorderRadius.all(HiveSquircleRadius radius)
      : this.only(
          topLeft: radius,
          topRight: radius,
          bottomLeft: radius,
          bottomRight: radius,
        );

  /// Creates a border radius with vertical symmetry, ensuring that the top and bottom
  /// sides of the rectangle have the same radii.
  const HiveSquircleBorderRadius.vertical({
    HiveSquircleRadius top = HiveSquircleRadius.zero,
    HiveSquircleRadius bottom = HiveSquircleRadius.zero,
  }) : this.only(
          topLeft: top,
          topRight: top,
          bottomLeft: bottom,
          bottomRight: bottom,
        );

  /// Creates a border radius with horizontal symmetry, ensuring that the left and right
  /// sides of the rectangle have the same radii.
  const HiveSquircleBorderRadius.horizontal({
    HiveSquircleRadius left = HiveSquircleRadius.zero,
    HiveSquircleRadius right = HiveSquircleRadius.zero,
  }) : this.only(
          topLeft: left,
          topRight: right,
          bottomLeft: left,
          bottomRight: right,
        );

  /// Creates a border radius with only the provided non-zero values, resulting in
  /// right angles for the other corners.
  const HiveSquircleBorderRadius.only({
    this.topLeft = HiveSquircleRadius.zero,
    this.topRight = HiveSquircleRadius.zero,
    this.bottomLeft = HiveSquircleRadius.zero,
    this.bottomRight = HiveSquircleRadius.zero,
  }) : super.only(
          topLeft: topLeft,
          bottomRight: topRight,
          topRight: topRight,
          bottomLeft: bottomLeft,
        );

  /// Required by Flutter framework internals for proper functioning.
  Radius get _topLeft => topLeft;
  Radius get _topRight => topRight;
  Radius get _bottomLeft => bottomLeft;
  Radius get _bottomRight => bottomRight;
  Radius get _topStart => Radius.zero;
  Radius get _topEnd => Radius.zero;
  Radius get _bottomStart => Radius.zero;
  Radius get _bottomEnd => Radius.zero;

  /// Returns a copy of this BorderRadius with the given fields replaced with the new values.
  @override
  HiveSquircleBorderRadius copyWith({
    Radius? topLeft,
    Radius? topRight,
    Radius? bottomLeft,
    Radius? bottomRight,
  }) {
    return HiveSquircleBorderRadius.only(
      topLeft: topLeft is HiveSquircleRadius ? topLeft : this.topLeft,
      topRight: topRight is HiveSquircleRadius ? topRight : this.topRight,
      bottomLeft:
          bottomLeft is HiveSquircleRadius ? bottomLeft : this.bottomLeft,
      bottomRight:
          bottomRight is HiveSquircleRadius ? bottomRight : this.bottomRight,
    );
  }

  /// Creates a [Path] inside the given [Rect].
  Path toPath(Rect rect) {
    final width = rect.width;
    final height = rect.height;

    final result = Path();

    /// Calculating only if values are different.
    final processedTopLeft = ProcessedSquircleRadius(
      topLeft,
      width: width,
      height: height,
    );

    final processedBottomLeft = topLeft == bottomLeft
        ? processedTopLeft
        : ProcessedSquircleRadius(
            bottomLeft,
            width: width,
            height: height,
          );

    final processedBottomRight = bottomLeft == bottomRight
        ? processedBottomLeft
        : ProcessedSquircleRadius(
            bottomRight,
            width: width,
            height: height,
          );

    final processedTopRight = topRight == bottomRight
        ? processedBottomRight
        : ProcessedSquircleRadius(
            topRight,
            width: width,
            height: height,
          );

    result
      ..addSmoothTopRight(processedTopRight, rect)
      ..addSmoothBottomRight(processedBottomRight, rect)
      ..addSmoothBottomLeft(processedBottomLeft, rect)
      ..addSmoothTopLeft(processedTopLeft, rect);

    return result.transform(
      Matrix4.translationValues(rect.left, rect.top, 0).storage,
    );
  }

  @override
  BorderRadiusGeometry subtract(BorderRadiusGeometry other) {
    if (other is HiveSquircleBorderRadius) return this - other;
    return super.subtract(other);
  }

  @override
  BorderRadiusGeometry add(BorderRadiusGeometry other) {
    if (other is HiveSquircleBorderRadius) return this + other;
    return super.add(other);
  }

  /// Returns the difference between two [BorderRadius] objects.
  @override
  HiveSquircleBorderRadius operator -(BorderRadius other) {
    if (other is HiveSquircleBorderRadius) {
      return HiveSquircleBorderRadius.only(
        topLeft: (topLeft - other.topLeft) as HiveSquircleRadius,
        topRight: (topRight - other.topRight) as HiveSquircleRadius,
        bottomLeft: (bottomLeft - other.bottomLeft) as HiveSquircleRadius,
        bottomRight: (bottomRight - other.bottomRight) as HiveSquircleRadius,
      );
    }

    return this;
  }

  /// Returns the sum of two [BorderRadius] objects.
  @override
  HiveSquircleBorderRadius operator +(BorderRadius other) {
    if (other is HiveSquircleBorderRadius) {
      return HiveSquircleBorderRadius.only(
        topLeft: (topLeft + other.topLeft) as HiveSquircleRadius,
        topRight: (topRight + other.topRight) as HiveSquircleRadius,
        bottomLeft: (bottomLeft + other.bottomLeft) as HiveSquircleRadius,
        bottomRight: (bottomRight + other.bottomRight) as HiveSquircleRadius,
      );
    }

    return this;
  }

  /// Returns the [BorderRadius] object with each corner negated.
  ///
  /// This is the same as multiplying the object by -1.0.
  @override
  HiveSquircleBorderRadius operator -() {
    return HiveSquircleBorderRadius.only(
      topLeft: (-topLeft) as HiveSquircleRadius,
      topRight: (-topRight) as HiveSquircleRadius,
      bottomLeft: (-bottomLeft) as HiveSquircleRadius,
      bottomRight: (-bottomRight) as HiveSquircleRadius,
    );
  }

  /// Scales each corner of the [BorderRadius] by the given factor.
  @override
  HiveSquircleBorderRadius operator *(double other) {
    return HiveSquircleBorderRadius.only(
      topLeft: topLeft * other,
      topRight: topRight * other,
      bottomLeft: bottomLeft * other,
      bottomRight: bottomRight * other,
    );
  }

  /// Divides each corner of the [BorderRadius] by the given factor.
  @override
  HiveSquircleBorderRadius operator /(double other) {
    return HiveSquircleBorderRadius.only(
      topLeft: topLeft / other,
      topRight: topRight / other,
      bottomLeft: bottomLeft / other,
      bottomRight: bottomRight / other,
    );
  }

  /// Integer divides each corner of the [BorderRadius] by the given factor.
  @override
  HiveSquircleBorderRadius operator ~/(double other) {
    return HiveSquircleBorderRadius.only(
      topLeft: topLeft ~/ other,
      topRight: topRight ~/ other,
      bottomLeft: bottomLeft ~/ other,
      bottomRight: bottomRight ~/ other,
    );
  }

  /// Computes the remainder of each corner by the given factor.
  @override
  HiveSquircleBorderRadius operator %(double other) {
    return HiveSquircleBorderRadius.only(
      topLeft: topLeft % other,
      topRight: topRight % other,
      bottomLeft: bottomLeft % other,
      bottomRight: bottomRight % other,
    );
  }

  /// Linearly interpolate between two [BorderRadius] objects.
  ///
  /// If either is null, this function interpolates from [BorderRadius.zero].
  ///
  /// {@macro dart.ui.shadow.lerp}
  static HiveSquircleBorderRadius? lerp(
      HiveSquircleBorderRadius? a, HiveSquircleBorderRadius? b, double t) {
    if (a == null && b == null) return null;
    if (a == null) return b! * t;
    if (b == null) return a * (1.0 - t);
    return HiveSquircleBorderRadius.only(
      topLeft: HiveSquircleRadius.lerp(a.topLeft, b.topLeft, t)!,
      topRight: HiveSquircleRadius.lerp(a.topRight, b.topRight, t)!,
      bottomLeft: HiveSquircleRadius.lerp(a.bottomLeft, b.bottomLeft, t)!,
      bottomRight: HiveSquircleRadius.lerp(a.bottomRight, b.bottomRight, t)!,
    );
  }

  @override
  BorderRadius resolve(TextDirection? direction) => BorderRadius.only(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
      );

  @override
  String toString() {
    if (topLeft == topRight &&
        topLeft == bottomRight &&
        topLeft == bottomLeft) {
      final radius = topLeft.toString();
      return 'HiveSquircleBorderRadius${radius.substring(12)}';
    }

    return 'HiveSquircleBorderRadius('
        'topLeft: $topLeft, '
        'topRight: $topRight, '
        'bottomLeft: $bottomLeft, '
        'bottomRight: $bottomRight, '
        ')';
  }
}
