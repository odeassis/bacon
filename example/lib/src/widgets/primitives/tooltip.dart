// import 'dart:developer';

// import 'package:bacon/bacon.dart';
// import 'package:example/src/widgets/text_divider.dart';
// import 'package:flutter/material.dart';

// class PrimitiveTooltip extends StatefulWidget {
//   static const String routeName = '/primitives/tooltip';
//   const PrimitiveTooltip({super.key});

//   @override
//   State<PrimitiveTooltip> createState() => _PrimitiveTooltipState();
// }

// class _PrimitiveTooltipState extends State<PrimitiveTooltip> {
//   bool show = true;

//   @override
//   Widget build(BuildContext context) {
//     log(show.toString());

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
//             BaconTooltip(
//               show: show,
//               hideOnTap: false,
//               title: const Text("Tooltip title here"),
//               leading: const Icon(Icons.crop),
//               content: const Text(
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
//               trailing: BaconButton.icon(
//                 showBorder: false,
//                 buttonSize: BaconButtonSize.sm,
//                 type: BaconButtonType.neutral,
//                 icon: const Icon(Icons.close),
//                 onTap: () {
//                   log("Tooltip closed");
//                   setState(() {
//                     show = false;
//                   });
//                 },
//               ),
//               child: BaconButton(
//                 onTap: () {
//                   setState(() {
//                     show = !show;
//                   });
//                 },
//                 label: const Text("Show Tooltip"),
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
