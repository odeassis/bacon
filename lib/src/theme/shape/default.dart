import 'package:bacon/src/theme/shape/base.dart';
import 'package:bacon/src/theme/variables/primitives/shape.dart';

class BaconDefaultShapeTheme extends BaconShapeTheme {
  const BaconDefaultShapeTheme({
    required super.surface,
    required super.componentBorderRadiusXXS,
    required super.componentBorderRadiusXS,
    required super.componentBorderRadiusX,
    required super.componentBorderRadiusM,
    required super.componentBorderRadiusL,
    required super.componentBorderRadiusXL,
  });

  const BaconDefaultShapeTheme.defaultShape()
      : super(
          surface: baconShape12,
          componentBorderRadiusXXS: baconShape4,
          componentBorderRadiusXS: baconShape8,
          componentBorderRadiusX: baconShape12,
          componentBorderRadiusM: baconShape16,
          componentBorderRadiusL: baconShape20,
          componentBorderRadiusXL: baconShape24,
        );

  const BaconDefaultShapeTheme.rounded()
      : super(
          surface: baconShape16,
          componentBorderRadiusXXS: baconShape32,
          componentBorderRadiusXS: baconShape32,
          componentBorderRadiusX: baconShape32,
          componentBorderRadiusM: baconShape32,
          componentBorderRadiusL: baconShape32,
          componentBorderRadiusXL: baconShape32,
        );

  const BaconDefaultShapeTheme.sharp()
      : super(
          surface: baconShape2,
          componentBorderRadiusXXS: baconShape2,
          componentBorderRadiusXS: baconShape2,
          componentBorderRadiusX: baconShape2,
          componentBorderRadiusM: baconShape2,
          componentBorderRadiusL: baconShape2,
          componentBorderRadiusXL: baconShape2,
        );
}
