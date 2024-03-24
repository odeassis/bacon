// ignore_for_file: overridden_fields, unused_element

import 'package:bacon/src/utils/squircle/path_squircle_corners.dart';
import 'package:bacon/src/utils/squircle/processed_squircle_radius.dart';
import 'package:bacon/src/utils/squircle/squircle_radius.dart';
import 'package:flutter/rendering.dart';

class BaconSquircleBorderRadius extends BorderRadius {
  /// The border radius with zero radii.
  static const BaconSquircleBorderRadius zero =
      BaconSquircleBorderRadius.all(BaconSquircleRadius.zero);

  /// The top-left [BaconSquircleRadius].
  @override
  final BaconSquircleRadius topLeft;

  /// The top-right [BaconSquircleRadius].
  @override
  final BaconSquircleRadius topRight;

  /// The bottom-left [BaconSquircleRadius].
  @override
  final BaconSquircleRadius bottomLeft;

  /// The bottom-right [BaconSquircleRadius].
  @override
  final BaconSquircleRadius bottomRight;

  BaconSquircleBorderRadius({
    required double cornerRadius,
    // The value of 1 or 1.0 leads to NaN error in mobile web/PWA. Hence, we use 0.9 instead to avoid this issue.
    double cornerSmoothing = 0.9,
  }) : this.only(
          topLeft: BaconSquircleRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          topRight: BaconSquircleRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          bottomLeft: BaconSquircleRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          bottomRight: BaconSquircleRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
        );

  /// Creates a border radius with all radii set to [radius].
  const BaconSquircleBorderRadius.all(BaconSquircleRadius radius)
      : this.only(
          topLeft: radius,
          topRight: radius,
          bottomLeft: radius,
          bottomRight: radius,
        );

  /// Creates a border radius with vertical symmetry, ensuring that the top and bottom
  /// sides of the rectangle have the same radii.
  const BaconSquircleBorderRadius.vertical({
    BaconSquircleRadius top = BaconSquircleRadius.zero,
    BaconSquircleRadius bottom = BaconSquircleRadius.zero,
  }) : this.only(
          topLeft: top,
          topRight: top,
          bottomLeft: bottom,
          bottomRight: bottom,
        );

  /// Creates a border radius with horizontal symmetry, ensuring that the left and right
  /// sides of the rectangle have the same radii.
  const BaconSquircleBorderRadius.horizontal({
    BaconSquircleRadius left = BaconSquircleRadius.zero,
    BaconSquircleRadius right = BaconSquircleRadius.zero,
  }) : this.only(
          topLeft: left,
          topRight: right,
          bottomLeft: left,
          bottomRight: right,
        );

  /// Creates a border radius with only the provided non-zero values, resulting in
  /// right angles for the other corners.
  const BaconSquircleBorderRadius.only({
    this.topLeft = BaconSquircleRadius.zero,
    this.topRight = BaconSquircleRadius.zero,
    this.bottomLeft = BaconSquircleRadius.zero,
    this.bottomRight = BaconSquircleRadius.zero,
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
  BaconSquircleBorderRadius copyWith({
    Radius? topLeft,
    Radius? topRight,
    Radius? bottomLeft,
    Radius? bottomRight,
  }) {
    return BaconSquircleBorderRadius.only(
      topLeft: topLeft is BaconSquircleRadius ? topLeft : this.topLeft,
      topRight: topRight is BaconSquircleRadius ? topRight : this.topRight,
      bottomLeft:
          bottomLeft is BaconSquircleRadius ? bottomLeft : this.bottomLeft,
      bottomRight:
          bottomRight is BaconSquircleRadius ? bottomRight : this.bottomRight,
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
    if (other is BaconSquircleBorderRadius) return this - other;
    return super.subtract(other);
  }

  @override
  BorderRadiusGeometry add(BorderRadiusGeometry other) {
    if (other is BaconSquircleBorderRadius) return this + other;
    return super.add(other);
  }

  /// Returns the difference between two [BorderRadius] objects.
  @override
  BaconSquircleBorderRadius operator -(BorderRadius other) {
    if (other is BaconSquircleBorderRadius) {
      return BaconSquircleBorderRadius.only(
        topLeft: (topLeft - other.topLeft) as BaconSquircleRadius,
        topRight: (topRight - other.topRight) as BaconSquircleRadius,
        bottomLeft: (bottomLeft - other.bottomLeft) as BaconSquircleRadius,
        bottomRight: (bottomRight - other.bottomRight) as BaconSquircleRadius,
      );
    }

    return this;
  }

  /// Returns the sum of two [BorderRadius] objects.
  @override
  BaconSquircleBorderRadius operator +(BorderRadius other) {
    if (other is BaconSquircleBorderRadius) {
      return BaconSquircleBorderRadius.only(
        topLeft: (topLeft + other.topLeft) as BaconSquircleRadius,
        topRight: (topRight + other.topRight) as BaconSquircleRadius,
        bottomLeft: (bottomLeft + other.bottomLeft) as BaconSquircleRadius,
        bottomRight: (bottomRight + other.bottomRight) as BaconSquircleRadius,
      );
    }

    return this;
  }

  /// Returns the [BorderRadius] object with each corner negated.
  ///
  /// This is the same as multiplying the object by -1.0.
  @override
  BaconSquircleBorderRadius operator -() {
    return BaconSquircleBorderRadius.only(
      topLeft: (-topLeft) as BaconSquircleRadius,
      topRight: (-topRight) as BaconSquircleRadius,
      bottomLeft: (-bottomLeft) as BaconSquircleRadius,
      bottomRight: (-bottomRight) as BaconSquircleRadius,
    );
  }

  /// Scales each corner of the [BorderRadius] by the given factor.
  @override
  BaconSquircleBorderRadius operator *(double other) {
    return BaconSquircleBorderRadius.only(
      topLeft: topLeft * other,
      topRight: topRight * other,
      bottomLeft: bottomLeft * other,
      bottomRight: bottomRight * other,
    );
  }

  /// Divides each corner of the [BorderRadius] by the given factor.
  @override
  BaconSquircleBorderRadius operator /(double other) {
    return BaconSquircleBorderRadius.only(
      topLeft: topLeft / other,
      topRight: topRight / other,
      bottomLeft: bottomLeft / other,
      bottomRight: bottomRight / other,
    );
  }

  /// Integer divides each corner of the [BorderRadius] by the given factor.
  @override
  BaconSquircleBorderRadius operator ~/(double other) {
    return BaconSquircleBorderRadius.only(
      topLeft: topLeft ~/ other,
      topRight: topRight ~/ other,
      bottomLeft: bottomLeft ~/ other,
      bottomRight: bottomRight ~/ other,
    );
  }

  /// Computes the remainder of each corner by the given factor.
  @override
  BaconSquircleBorderRadius operator %(double other) {
    return BaconSquircleBorderRadius.only(
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
  static BaconSquircleBorderRadius? lerp(
      BaconSquircleBorderRadius? a, BaconSquircleBorderRadius? b, double t) {
    if (a == null && b == null) return null;
    if (a == null) return b! * t;
    if (b == null) return a * (1.0 - t);
    return BaconSquircleBorderRadius.only(
      topLeft: BaconSquircleRadius.lerp(a.topLeft, b.topLeft, t)!,
      topRight: BaconSquircleRadius.lerp(a.topRight, b.topRight, t)!,
      bottomLeft: BaconSquircleRadius.lerp(a.bottomLeft, b.bottomLeft, t)!,
      bottomRight: BaconSquircleRadius.lerp(a.bottomRight, b.bottomRight, t)!,
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
      return 'BaconSquircleBorderRadius${radius.substring(12)}';
    }

    return 'BaconSquircleBorderRadius('
        'topLeft: $topLeft, '
        'topRight: $topRight, '
        'bottomLeft: $bottomLeft, '
        'bottomRight: $bottomRight, '
        ')';
  }
}
