import 'package:bacon/src/utils/squircle/squircle_border.dart';
import 'package:bacon/src/utils/squircle/squircle_border_radius.dart';
import 'package:flutter/widgets.dart';

class BaconClipSquircleRect extends StatelessWidget {
  final BaconSquircleBorderRadius radius;
  final Clip clipBehavior;
  final Widget? child;

  const BaconClipSquircleRect({
    super.key,
    required this.child,
    this.radius = BaconSquircleBorderRadius.zero,
    this.clipBehavior = Clip.antiAlias,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath.shape(
      clipBehavior: clipBehavior,
      shape: BaconSquircleBorder(
        borderRadius: radius,
      ),
      child: child,
    );
  }
}
