import 'radii/default.dart';
import 'radii_tokens.dart';

class HiveShape extends HiveShapeTokens {
  HiveShape() : super(radii: HiveRadiiShape());

  HiveShape.rounded() : super(radii: HiveRadiiShape.rounded());

  HiveShape.sharp() : super(radii: HiveRadiiShape.sharp());
}
