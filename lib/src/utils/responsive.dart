// import 'dart:ui';

// import 'package:bacon/src/theme/theme.dart';
// import 'package:flutter/material.dart';

// class Responsive {
//   Responsive({
//     double tiny = 0,
//     double small = 640,
//     double medium = 768,
//     double large = 1024,
//     double extraLarge = 1280,
//     double xExtraLarge = 1536,
//   })  : tiny = BreakPointTiny(tiny),
//         small = BreakPointSmall(small),
//         medium = BreakPointMedium(medium),
//         large = BreakPointLarge(large),
//         extraLarge = BreakPointExtraLarge(extraLarge),
//         xExtraLarge = BreakPointXExtraLarge(xExtraLarge);

//   final BreakPoint tiny;
//   final BreakPoint small;
//   final BreakPoint medium;
//   final BreakPoint large;
//   final BreakPoint extraLarge;
//   final BreakPoint xExtraLarge;

//   BreakPoint fromWidth(double width) {
//     if (width < small.value) {
//       return tiny;
//     }
//     if (width < medium.value) {
//       return small;
//     }
//     if (width < large.value) {
//       return medium;
//     }
//     if (width < extraLarge.value) {
//       return large;
//     }
//     if (width < xExtraLarge.value) {
//       return extraLarge;
//     }

//     return xExtraLarge;
//   }

//   static Responsive lerp(
//     Responsive? a,
//     Responsive? b,
//     double t,
//   ) {
//     return Responsive(
//       tiny: BreakPoint.lerp(a!.tiny, b!.tiny, t),
//       small: BreakPoint.lerp(a.small, b.small, t),
//       medium: BreakPoint.lerp(a.medium, b.medium, t),
//       large: BreakPoint.lerp(a.large, b.large, t),
//       extraLarge: BreakPoint.lerp(a.extraLarge, b.extraLarge, t),
//       xExtraLarge: BreakPoint.lerp(a.xExtraLarge, b.xExtraLarge, t),
//     );
//   }
// }

// class BreakPoint {
//   const BreakPoint(this.value);

//   final double value;

//   bool operator <(BreakPoint other) => value < other.value;
//   bool operator <=(BreakPoint other) => value <= other.value;
//   bool operator >(BreakPoint other) => value > other.value;
//   bool operator >=(BreakPoint other) => value >= other.value;

//   static double lerp(BreakPoint a, BreakPoint b, double t) =>
//       lerpDouble(a.value, b.value, t)!;
// }

// class BreakPointTiny extends BreakPoint {
//   const BreakPointTiny(super.value);
// }

// class BreakPointSmall extends BreakPoint {
//   const BreakPointSmall(super.value);
// }

// class BreakPointMedium extends BreakPoint {
//   const BreakPointMedium(super.value);
// }

// class BreakPointLarge extends BreakPoint {
//   const BreakPointLarge(super.value);
// }

// class BreakPointExtraLarge extends BreakPoint {
//   const BreakPointExtraLarge(super.value);
// }

// class BreakPointXExtraLarge extends BreakPoint {
//   const BreakPointXExtraLarge(super.value);
// }

// typedef ResponsiveWidgetBuilder = Widget Function(
//   BuildContext context,
//   BreakPoint breakPoint,
// );

// class ResponsiveBuilder extends StatelessWidget {
//   const ResponsiveBuilder({
//     super.key,
//     required this.builder,
//   });

//   final ResponsiveWidgetBuilder builder;

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.sizeOf(context).width;
//     final breakpoints = BaconTheme.of(context).responsive;
//     final breakpoint = breakpoints.fromWidth(width);
//     return builder(context, breakpoint);
//   }
// }
