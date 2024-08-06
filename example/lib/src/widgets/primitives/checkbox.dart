// import 'package:bacon/bacon.dart';
// import 'package:example/src/widgets/text_divider.dart';
// import 'package:flutter/material.dart';

// class PrimitiveCheckbox extends StatefulWidget {
//   static const String routeName = '/primitives/checkbox';
//   const PrimitiveCheckbox({super.key});

//   @override
//   State<PrimitiveCheckbox> createState() => _PrimitiveCheckboxState();
// }

// class _PrimitiveCheckboxState extends State<PrimitiveCheckbox> {
//   bool? value = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
//         child: Column(
//           children: [
//             const TextDivider(
//               text: "Tag",
//               paddingTop: 0,
//             ),
//             BaconCheckbox(
//               value: value,
//               tristate: true,
//               onChanged: (bool? newValue) {
//                 setState(() {
//                   value = newValue;
//                 });
//               },
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
