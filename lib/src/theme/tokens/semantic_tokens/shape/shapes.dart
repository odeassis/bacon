import 'package:bacon/src/theme/tokens/semantic_tokens/shape/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/shape/radii/border_radius.dart';

class BaconDefaultSemanticTokensShapes extends BaconBaseSemanticTokensShape {
  BaconDefaultSemanticTokensShapes.kDefault()
      : super(
          borderRadius: BaconDefaultRadiiComponentShape.kDefault(),
        );

  BaconDefaultSemanticTokensShapes.rounded()
      : super(
          borderRadius: BaconDefaultRadiiComponentShape.rounded(),
        );

  BaconDefaultSemanticTokensShapes.sharp()
      : super(
          borderRadius: BaconDefaultRadiiComponentShape.sharp(),
        );
}
