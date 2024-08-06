// import 'package:bacon/bacon.dart';
// import 'package:example/src/widgets/text_divider.dart';
// import 'package:flutter/material.dart';

// class PrimitiveCarousel extends StatefulWidget {
//   static const String routeName = '/primitives/carousel';
//   const PrimitiveCarousel({super.key});

//   @override
//   State<PrimitiveCarousel> createState() => _PrimitiveCarouselState();
// }

// class _PrimitiveCarouselState extends State<PrimitiveCarousel> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
//           child: Column(
//             children: [
//               const TextDivider(
//                 text: "Carousel",
//                 paddingTop: 0,
//               ),
//               SizedBox(
//                 height: 114,
//                 child: OverflowBox(
//                   child: BaconCarousel(
//                     isCentered: true,
//                     itemCount: 10,
//                     itemExtent: 114,
//                     loop: true,
//                     autoPlay: true,
//                     itemBuilder: (BuildContext context, int itemIndex, int _) =>
//                         Container(
//                       decoration: ShapeDecoration(
//                         color: Colors.black,
//                         shape: BaconSquircleBorder(
//                           borderRadius: BorderRadius.circular(12)
//                               .squircleBorderRadius(context),
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           "${itemIndex + 1}",
//                           style: const TextStyle(
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
