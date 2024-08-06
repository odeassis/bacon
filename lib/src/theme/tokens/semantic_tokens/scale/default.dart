import 'component/defaults.dart';
import 'gap/default.dart';
import 'padding/default.dart';
import 'scales_tokens.dart';

class HiveScale extends HiveScaleTokens {
  HiveScale()
      : super(
          component: HiveComponentsScale(),
          padding: HivePadding(),
          gap: HiveGap(),
        );

  HiveScale.compact()
      : super(
          component: HiveComponentsScale.compact(),
          padding: HivePadding.compact(),
          gap: HiveGap.compact(),
        );

  HiveScale.expanded()
      : super(
          component: HiveComponentsScale.expanded(),
          padding: HivePadding.expanded(),
          gap: HiveGap.expanded(),
        );
}
