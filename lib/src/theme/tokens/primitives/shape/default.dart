import 'shapes_tokens.dart';

class HiveShapes extends HivePrimitiveShapesTokens {
  const HiveShapes({
    required super.shape0,
    required super.shape2,
    required super.shape4,
    required super.shape6,
    required super.shape8,
    required super.shape12,
    required super.shape16,
    required super.shape20,
    required super.shape24,
    required super.shape32,
    required super.shape40,
    required super.shape100,
  });

  static HiveShapes shapes = const HiveShapes(
    shape0: 0.0,
    shape2: 2.0,
    shape4: 4.0,
    shape6: 6.0,
    shape8: 8.0,
    shape12: 12.0,
    shape16: 16.0,
    shape20: 20.0,
    shape24: 24.0,
    shape32: 32.0,
    shape40: 40.0,
    shape100: 100.0,
  );
}
