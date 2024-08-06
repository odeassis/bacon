// import 'package:bacon/bacon.dart';
// import 'package:example/src/widgets/text_divider.dart';
// import 'package:flutter/material.dart';

// class PrimitiveMenuItem extends StatefulWidget {
//   static const String routeName = '/primitives/menu_item';
//   const PrimitiveMenuItem({super.key});

//   @override
//   State<PrimitiveMenuItem> createState() => _PrimitiveMenuItemState();
// }

// class _PrimitiveMenuItemState extends State<PrimitiveMenuItem> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const TextDivider(
//                 text: "Menu Item",
//                 paddingTop: 0,
//               ),
//               BaconMenuItem(
//                 leading: const BaconAvatar(
//                   content: Text("GA"),
//                 ),
//                 label: const Text("One-line menu item"),
//                 content: const Text("one-line content field example"),
//                 onTap: () {},
//                 menuItemCrossAxisAlignment: CrossAxisAlignment.center,
//                 trailing: const Icon(Icons.keyboard_arrow_right_rounded),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
