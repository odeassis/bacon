import 'package:flutter/widgets.dart';

import 'squircle.dart';

class HiveClipSquircleRect extends StatelessWidget {
  final HiveSquircleBorderRadius radius;
  final Clip clipBehavior;
  final Widget? child;

  const HiveClipSquircleRect({
    super.key,
    required this.child,
    this.radius = HiveSquircleBorderRadius.zero,
    this.clipBehavior = Clip.antiAlias,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath.shape(
      clipBehavior: clipBehavior,
      shape: HiveSquircleBorder(
        borderRadius: radius,
      ),
      child: child,
    );
  }
}
