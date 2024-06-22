import 'package:bacon/src/theme/tokens/primitives/shape/shapes.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/shape/radii/base.dart';
import 'package:flutter/material.dart';

class BaconDefaultRadiiComponentShape
    extends BaconBaseRadiiSemanticTokensShape {
  BaconDefaultRadiiComponentShape.kDefault()
      : super(
          surface: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape12)),
          x3s: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          x2s: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape4)),
          xs: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape8)),
          sm: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape12)),
          md: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape16)),
          lg: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape20)),
          xl: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape24)),
          x2l: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          x3l: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape40)),
          full: const BorderRadius.all(Radius.circular(9999)),
          defaultBorderWidth: 1,
          activeBorderWidth: 1.5,
        );

  BaconDefaultRadiiComponentShape.rounded()
      : super(
          surface: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape16)),
          x3s: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          x2s: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          xs: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          sm: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          md: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          lg: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          xl: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          x2l: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          x3l: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape32)),
          full: const BorderRadius.all(Radius.circular(9999)),
          defaultBorderWidth: 1,
          activeBorderWidth: 1.5,
        );

  BaconDefaultRadiiComponentShape.sharp()
      : super(
          surface: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          x3s: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          x2s: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          xs: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          sm: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          md: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          lg: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          xl: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          x2l: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          x3l: BorderRadius.all(
              Radius.circular(const BaconDefaultPrimitiveShapes().shape2)),
          full: const BorderRadius.all(Radius.circular(9999)),
          defaultBorderWidth: 1,
          activeBorderWidth: 1.5,
        );
}
