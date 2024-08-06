import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/tooltip/tooltip.dart';
import 'squircle/squircle_radius.dart';

class TooltipShape extends ShapeBorder {
  final BorderRadius borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double arrowOffset;
  final double arrowBaseWidth;
  final double arrowLength;
  final double arrowTipDistance;
  final double childWidth;
  final TooltipPosition tooltipPosition;

  const TooltipShape({
    required this.borderRadius,
    required this.borderColor,
    required this.borderWidth,
    this.arrowOffset = 0,
    required this.arrowBaseWidth,
    required this.arrowLength,
    required this.arrowTipDistance,
    required this.childWidth,
    required this.tooltipPosition,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..fillType = PathFillType.evenOdd
      ..addPath(getOuterPath(rect), Offset.zero);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final double topLeftRadius = borderRadius.topLeft.x;
    final double topRightRadius = borderRadius.topRight.x;
    final double bottomLeftRadius = borderRadius.bottomLeft.x;
    final double bottomRightRadius = borderRadius.bottomRight.x;

    Offset tooltipCenter = rect.center;

    Path getLeftTopPath(Rect rect) {
      return Path()
        ..moveTo(rect.left, rect.bottom - bottomLeftRadius)
        ..lineTo(rect.left, rect.top + topLeftRadius)
        ..arcToPoint(
          Offset(rect.left + topLeftRadius, rect.top),
          radius: HiveSquircleRadius(cornerRadius: topLeftRadius),
        )
        ..lineTo(rect.right - topRightRadius, rect.top)
        ..arcToPoint(
          Offset(rect.right, rect.top + topRightRadius),
          radius: HiveSquircleRadius(cornerRadius: topRightRadius),
        );
    }

    Path getBottomRightPath(Rect rect) {
      return Path()
        ..moveTo(rect.left + bottomLeftRadius, rect.bottom)
        ..lineTo(rect.right - bottomRightRadius, rect.bottom)
        ..arcToPoint(
          Offset(rect.right, rect.bottom - bottomRightRadius),
          radius: HiveSquircleRadius(cornerRadius: bottomRightRadius),
          clockwise: false,
        )
        ..lineTo(rect.right, rect.top + topRightRadius)
        ..arcToPoint(
          Offset(rect.right - topRightRadius, rect.top),
          radius: HiveSquircleRadius(cornerRadius: topRightRadius),
          clockwise: false,
        );
    }

    if (tooltipPosition == TooltipPosition.right) {
      tooltipCenter =
          rect.centerLeft.translate(-arrowLength - arrowTipDistance, 0);
    } else if (tooltipPosition == TooltipPosition.left) {
      tooltipCenter =
          rect.centerRight.translate(arrowLength + arrowTipDistance, 0);
    }

    switch (tooltipPosition) {
      case TooltipPosition.top:
        return getLeftTopPath(rect)
          ..lineTo(rect.right, rect.bottom - bottomRightRadius)
          ..arcToPoint(
            Offset(rect.right - bottomRightRadius, rect.bottom),
            radius: HiveSquircleRadius(cornerRadius: bottomRightRadius),
          )
          // To corner of arrow base.
          ..lineTo(
            min(
              max(arrowOffset + tooltipCenter.dx + arrowBaseWidth / 2,
                  rect.left + bottomLeftRadius + arrowBaseWidth),
              rect.right - bottomRightRadius,
            ),
            rect.bottom,
          )
          // To arrow tip.
          ..lineTo(arrowOffset + tooltipCenter.dx, rect.bottom + arrowLength)
          // To opposite corner of arrow base.
          ..lineTo(
            max(
              min(arrowOffset + tooltipCenter.dx - arrowBaseWidth / 2,
                  rect.right - bottomRightRadius - arrowBaseWidth),
              rect.left + bottomLeftRadius,
            ),
            rect.bottom,
          )
          ..lineTo(rect.left + bottomLeftRadius, rect.bottom)
          ..arcToPoint(
            Offset(rect.left, rect.bottom - bottomLeftRadius),
            radius: HiveSquircleRadius(cornerRadius: bottomLeftRadius),
          )
          ..lineTo(rect.left, rect.top + topLeftRadius)
          ..arcToPoint(
            Offset(rect.left + topLeftRadius, rect.top),
            radius: HiveSquircleRadius(cornerRadius: topLeftRadius),
          );

      case TooltipPosition.bottom:
        return getBottomRightPath(rect)
          // To corner of arrow base.
          ..lineTo(
            min(
              max(arrowOffset + tooltipCenter.dx + arrowBaseWidth / 2,
                  rect.left + topRightRadius + arrowBaseWidth),
              rect.right - topRightRadius,
            ),
            rect.top,
          )
          // To arrow tip.
          ..lineTo(arrowOffset + tooltipCenter.dx, rect.top - arrowLength)
          // To opposite corner of arrow base.
          ..lineTo(
            max(
              min(arrowOffset + tooltipCenter.dx - arrowBaseWidth / 2,
                  rect.right - topLeftRadius - arrowBaseWidth),
              rect.left + topLeftRadius,
            ),
            rect.top,
          )
          ..lineTo(rect.left + topLeftRadius, rect.top)
          ..arcToPoint(
            Offset(rect.left, rect.top + topLeftRadius),
            radius: HiveSquircleRadius(cornerRadius: topLeftRadius),
            clockwise: false,
          )
          ..lineTo(rect.left, rect.bottom - bottomLeftRadius)
          ..arcToPoint(
            Offset(rect.left + bottomLeftRadius, rect.bottom),
            radius: HiveSquircleRadius(cornerRadius: bottomLeftRadius),
            clockwise: false,
          );

      case TooltipPosition.left:
        return getLeftTopPath(rect)
          // To corner of arrow base.
          ..lineTo(
            rect.right,
            max(
              min(
                -arrowOffset + tooltipCenter.dy - arrowBaseWidth / 2,
                rect.bottom - bottomRightRadius - arrowBaseWidth,
              ),
              rect.top + topRightRadius,
            ),
          )
          // To arrow tip.
          ..lineTo(tooltipCenter.dx - arrowTipDistance,
              -arrowOffset + tooltipCenter.dy)
          // To opposite corner of arrow base.
          ..lineTo(
            rect.right,
            min(
              max(-arrowOffset + tooltipCenter.dy + arrowBaseWidth / 2,
                  rect.top + topRightRadius + arrowBaseWidth),
              rect.bottom - bottomRightRadius,
            ),
          )
          ..lineTo(rect.right, rect.bottom - bottomRightRadius)
          ..arcToPoint(
            Offset(rect.right - bottomRightRadius, rect.bottom),
            radius: HiveSquircleRadius(cornerRadius: bottomRightRadius),
          )
          ..lineTo(rect.left + bottomLeftRadius, rect.bottom)
          ..arcToPoint(
            Offset(rect.left, rect.bottom - bottomLeftRadius),
            radius: HiveSquircleRadius(cornerRadius: bottomLeftRadius),
          );

      case TooltipPosition.right:
        return getBottomRightPath(rect)
          ..lineTo(rect.left + topLeftRadius, rect.top)
          ..arcToPoint(
            Offset(rect.left, rect.top + topLeftRadius),
            radius: HiveSquircleRadius(cornerRadius: topLeftRadius),
            clockwise: false,
          )
          // To corner of arrow base.
          ..lineTo(
            rect.left,
            max(
              min(
                -arrowOffset + tooltipCenter.dy - arrowBaseWidth / 2,
                rect.bottom - bottomLeftRadius - arrowBaseWidth,
              ),
              rect.top + topLeftRadius,
            ),
          )
          // To arrow tip.
          ..lineTo(tooltipCenter.dx + arrowTipDistance,
              -arrowOffset + tooltipCenter.dy)
          // To opposite corner of arrow base.
          ..lineTo(
            rect.left,
            min(
              max(
                -arrowOffset + tooltipCenter.dy + arrowBaseWidth / 2,
                rect.top + topLeftRadius + arrowBaseWidth,
              ),
              rect.bottom - bottomLeftRadius,
            ),
          )
          ..lineTo(rect.left, rect.bottom - bottomLeftRadius)
          ..arcToPoint(
            Offset(rect.left + bottomLeftRadius, rect.bottom),
            radius: HiveSquircleRadius(cornerRadius: bottomLeftRadius),
            clockwise: false,
          );

      case TooltipPosition.topLeft:
        return getLeftTopPath(rect)
          ..lineTo(rect.right, rect.bottom - bottomRightRadius)
          ..arcToPoint(
            Offset(rect.right - bottomRightRadius, rect.bottom),
            radius: HiveSquircleRadius(cornerRadius: bottomRightRadius),
          )
          // To corner of arrow base.
          ..lineTo(
            min(
              rect.right - bottomRightRadius,
              max(
                arrowOffset +
                    rect.right -
                    (childWidth / 2) +
                    (arrowBaseWidth / 2),
                rect.left + bottomLeftRadius + arrowBaseWidth,
              ),
            ),
            rect.bottom,
          )
          // To arrow tip.
          ..lineTo(arrowOffset + rect.right - (childWidth / 2),
              rect.bottom + arrowLength)
          // To opposite corner of arrow base.
          ..lineTo(
            max(
              min(
                arrowOffset +
                    rect.right -
                    (childWidth / 2) -
                    (arrowBaseWidth / 2),
                rect.right - bottomRightRadius - arrowBaseWidth,
              ),
              rect.left + bottomLeftRadius,
            ),
            rect.bottom,
          )
          ..lineTo(rect.left + bottomLeftRadius, rect.bottom)
          ..arcToPoint(
            Offset(rect.left, rect.bottom - bottomLeftRadius),
            radius: HiveSquircleRadius(cornerRadius: bottomLeftRadius),
          )
          ..lineTo(rect.left, rect.top + topLeftRadius)
          ..arcToPoint(
            Offset(rect.left + topLeftRadius, rect.top),
            radius: HiveSquircleRadius(cornerRadius: topLeftRadius),
          );

      case TooltipPosition.topRight:
        return getLeftTopPath(rect)
          ..lineTo(rect.right, rect.bottom - bottomRightRadius)
          ..arcToPoint(
            Offset(rect.right - bottomRightRadius, rect.bottom),
            radius: HiveSquircleRadius(cornerRadius: bottomRightRadius),
          )
          // To corner of arrow base.
          ..lineTo(
            min(
              max(
                arrowOffset +
                    rect.left +
                    (childWidth / 2) +
                    (arrowBaseWidth / 2),
                rect.left + bottomLeftRadius + arrowBaseWidth,
              ),
              rect.right - bottomRightRadius,
            ),
            rect.bottom,
          )
          // To arrow tip.
          ..lineTo(arrowOffset + rect.left + (childWidth / 2),
              rect.bottom + arrowLength)
          // To opposite corner of arrow base.
          ..lineTo(
            max(
              min(
                arrowOffset +
                    rect.left +
                    (childWidth / 2) -
                    (arrowBaseWidth / 2),
                rect.right - bottomRightRadius - arrowBaseWidth,
              ),
              rect.left + bottomLeftRadius,
            ),
            rect.bottom,
          )
          ..lineTo(rect.left + bottomLeftRadius, rect.bottom)
          ..arcToPoint(
            Offset(rect.left, rect.bottom - bottomLeftRadius),
            radius: HiveSquircleRadius(cornerRadius: bottomLeftRadius),
          )
          ..lineTo(rect.left, rect.top + topLeftRadius)
          ..arcToPoint(
            Offset(rect.left + topLeftRadius, rect.top),
            radius: HiveSquircleRadius(cornerRadius: topLeftRadius),
          );

      case TooltipPosition.bottomLeft:
        return getBottomRightPath(rect)
          // To corner of arrow base.
          ..lineTo(
            min(
              max(
                arrowOffset +
                    rect.right -
                    (childWidth / 2) +
                    (arrowBaseWidth / 2),
                rect.left + topRightRadius + arrowBaseWidth,
              ),
              rect.right - topRightRadius,
            ),
            rect.top,
          )
          // To arrow tip.
          ..lineTo(arrowOffset + rect.right - (childWidth / 2),
              rect.top - arrowLength)
          // To opposite corner of arrow base.
          ..lineTo(
            max(
              min(
                arrowOffset +
                    rect.right -
                    (childWidth / 2) -
                    (arrowBaseWidth / 2),
                rect.right - bottomRightRadius - arrowBaseWidth,
              ),
              rect.left + topLeftRadius,
            ),
            rect.top,
          )
          ..lineTo(rect.left + topLeftRadius, rect.top)
          ..arcToPoint(
            Offset(rect.left, rect.top + topLeftRadius),
            radius: HiveSquircleRadius(cornerRadius: topLeftRadius),
            clockwise: false,
          )
          ..lineTo(rect.left, rect.bottom - bottomLeftRadius)
          ..arcToPoint(
            Offset(rect.left + bottomLeftRadius, rect.bottom),
            radius: HiveSquircleRadius(cornerRadius: bottomLeftRadius),
            clockwise: false,
          );

      case TooltipPosition.bottomRight:
        return getBottomRightPath(rect)
          // To corner of arrow base.
          ..lineTo(
            min(
              max(
                arrowOffset +
                    rect.left +
                    (childWidth / 2) +
                    (arrowBaseWidth / 2),
                rect.left + topRightRadius + arrowBaseWidth,
              ),
              rect.right - topRightRadius,
            ),
            rect.top,
          )
          // To arrow tip.
          ..lineTo(arrowOffset + rect.left + (childWidth / 2),
              rect.top - arrowLength)
          // To opposite corner of arrow base.
          ..lineTo(
            max(
              min(
                arrowOffset +
                    rect.left +
                    (childWidth / 2) -
                    (arrowBaseWidth / 2),
                rect.right - bottomRightRadius - arrowBaseWidth,
              ),
              rect.left + topLeftRadius,
            ),
            rect.top,
          )
          ..lineTo(rect.left + topLeftRadius, rect.top)
          ..arcToPoint(
            Offset(rect.left, rect.top + topLeftRadius),
            radius: HiveSquircleRadius(cornerRadius: topLeftRadius),
            clockwise: false,
          )
          ..lineTo(rect.left, rect.bottom - bottomLeftRadius)
          ..arcToPoint(
            Offset(rect.left + bottomLeftRadius, rect.bottom),
            radius: HiveSquircleRadius(cornerRadius: bottomLeftRadius),
            clockwise: false,
          );

      default:
        throw AssertionError(tooltipPosition);
    }
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final Paint paint = Paint()
      // If borderWidth is set to 0, set the color to be transparent to avoid strange behavior with border.
      ..color = borderWidth == 0 ? Colors.transparent : borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    canvas.drawPath(getOuterPath(rect), paint);
    canvas.clipPath(getOuterPath(rect));
  }

  @override
  ShapeBorder scale(double t) {
    return TooltipShape(
      tooltipPosition: tooltipPosition,
      arrowOffset: arrowOffset,
      arrowBaseWidth: arrowBaseWidth,
      arrowLength: arrowLength,
      arrowTipDistance: arrowTipDistance,
      borderRadius: borderRadius,
      borderWidth: borderWidth,
      childWidth: childWidth,
      borderColor: borderColor,
    );
  }
}
