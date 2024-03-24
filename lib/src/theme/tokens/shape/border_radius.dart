import 'package:bacon/src/theme/tokens/shape/base.dart';
import 'package:bacon/src/theme/tokens/variables/primitives/shape.dart';
import 'package:flutter/material.dart';

class BaconDefaultBorderRadius extends BaconBaseShape {
  const BaconDefaultBorderRadius({
    required super.surface,
    required super.xxs,
    required super.xs,
    required super.x,
    required super.md,
    required super.lg,
    required super.xl,
    required super.defaultBorderWidth,
    required super.activeBorderWidth,
  });

  const BaconDefaultBorderRadius.defaultShape()
      : super(
          surface: const BorderRadius.all(Radius.circular(baconShape12)),
          xxs: const BorderRadius.all(Radius.circular(baconShape4)),
          xs: const BorderRadius.all(Radius.circular(baconShape8)),
          x: const BorderRadius.all(Radius.circular(baconShape12)),
          md: const BorderRadius.all(Radius.circular(baconShape16)),
          lg: const BorderRadius.all(Radius.circular(baconShape20)),
          xl: const BorderRadius.all(Radius.circular(baconShape24)),
          defaultBorderWidth: 1,
          activeBorderWidth: 1.5,
        );

  const BaconDefaultBorderRadius.rounded()
      : super(
          surface: const BorderRadius.all(Radius.circular(baconShape16)),
          xxs: const BorderRadius.all(Radius.circular(baconShape32)),
          xs: const BorderRadius.all(Radius.circular(baconShape32)),
          x: const BorderRadius.all(Radius.circular(baconShape32)),
          md: const BorderRadius.all(Radius.circular(baconShape32)),
          lg: const BorderRadius.all(Radius.circular(baconShape32)),
          xl: const BorderRadius.all(Radius.circular(baconShape32)),
          defaultBorderWidth: 1,
          activeBorderWidth: 1.5,
        );

  const BaconDefaultBorderRadius.sharp()
      : super(
          surface: const BorderRadius.all(Radius.circular(baconShape2)),
          xxs: const BorderRadius.all(Radius.circular(baconShape2)),
          xs: const BorderRadius.all(Radius.circular(baconShape2)),
          x: const BorderRadius.all(Radius.circular(baconShape2)),
          md: const BorderRadius.all(Radius.circular(baconShape2)),
          lg: const BorderRadius.all(Radius.circular(baconShape2)),
          xl: const BorderRadius.all(Radius.circular(baconShape2)),
          defaultBorderWidth: 1,
          activeBorderWidth: 1.5,
        );
}
