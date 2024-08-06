// import 'package:bacon/bacon.dart';
// import 'package:example/src/widgets/text_divider.dart';
// import 'package:flutter/material.dart';

// class PrimitiveDivider extends StatelessWidget {
//   static const String routeName = '/primitives/divider';
//   const PrimitiveDivider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//           child: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
//         child: Column(
//           children: [
//             TextDivider(
//               text: "Divider",
//               paddingTop: 0,
//             ),
//             BaconDivider(),
//             SizedBox(height: 16.0),
//             BaconDivider(
//               dotted: true,
//             ),
//             TextDivider(
//               text: "Divider with Text",
//               paddingTop: 16.0,
//             ),
//             BaconDivider(
//               text: Text("OR"),
//             ),
//             SizedBox(height: 16.0),
//             BaconDivider(
//               dotted: true,
//               text: Text("OR"),
//             ),
//             TextDivider(
//               text: "Divider with Icon",
//               paddingTop: 16.0,
//             ),
//             BaconDivider(
//               icon: Icon(Icons.add),
//             ),
//             SizedBox(height: 16.0),
//             BaconDivider(
//               dotted: true,
//               icon: Icon(Icons.add),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
