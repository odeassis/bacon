import 'package:bacon/src/theme/tokens/semantic_tokens/shape/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/shape/radii/border_radius.dart';

class BaconDefaultSemanticTokensShapes extends BaconBaseSemanticTokensShape {
  BaconDefaultSemanticTokensShapes.kDefault()
      : super(
          radii: BaconDefaultRadiiComponentShape.kDefault(),
        );

  BaconDefaultSemanticTokensShapes.rounded()
      : super(
          radii: BaconDefaultRadiiComponentShape.rounded(),
        );

  BaconDefaultSemanticTokensShapes.sharp()
      : super(
          radii: BaconDefaultRadiiComponentShape.sharp(),
        );
}
