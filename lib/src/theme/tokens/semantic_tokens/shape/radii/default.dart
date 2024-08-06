import 'package:flutter/material.dart';

import '../../../primitives/primitives.dart';
import 'border_radius_tokens.dart';

class HiveRadiiShape extends HiveRadiiShapeTokens {
  HiveRadiiShape()
      : super(
          surface: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape12)),
          x3s: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          x2s: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape4)),
          xs: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape8)),
          sm: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape12)),
          md: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape16)),
          lg: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape20)),
          xl: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape24)),
          x2l: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          x3l: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape40)),
          full: const BorderRadius.all(Radius.circular(9999)),
          defaultBorderWidth: 1,
          activeBorderWidth: 1.5,
        );

  HiveRadiiShape.rounded()
      : super(
          surface: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape16)),
          x3s: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          x2s: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          xs: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          sm: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          md: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          lg: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          xl: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          x2l: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          x3l: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape32)),
          full: const BorderRadius.all(Radius.circular(9999)),
          defaultBorderWidth: 1,
          activeBorderWidth: 1.5,
        );

  HiveRadiiShape.sharp()
      : super(
          surface: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          x3s: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          x2s: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          xs: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          sm: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          md: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          lg: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          xl: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          x2l: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          x3l: BorderRadius.all(Radius.circular(HiveShapes.shapes.shape2)),
          full: const BorderRadius.all(Radius.circular(9999)),
          defaultBorderWidth: 1,
          activeBorderWidth: 1.5,
        );
}
