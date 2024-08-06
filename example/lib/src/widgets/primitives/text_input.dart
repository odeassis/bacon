// import 'dart:developer';

// import 'package:bacon/bacon.dart';
// import 'package:example/src/widgets/text_divider.dart';
// import 'package:flutter/material.dart';

// class PrimitiveTextInput extends StatefulWidget {
//   static const String routeName = '/primitives/divider';
//   const PrimitiveTextInput({super.key});

//   @override
//   State<PrimitiveTextInput> createState() => _PrimitiveTextInputState();
// }

// class _PrimitiveTextInputState extends State<PrimitiveTextInput> {
//   final TextEditingController _textController = TextEditingController();
//   final TextEditingController _dateController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   bool _hidePassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
//           child: Form(
//             child: Builder(builder: (context) {
//               return Column(
//                 children: [
//                   const TextDivider(
//                     text: "Divider",
//                     paddingTop: 0,
//                   ),
//                   BaconTextInput(
//                     //readOnly: true,
//                     hintText: "Read Only",
//                     trailing: MouseRegion(
//                       cursor: SystemMouseCursors.click,
//                       child: GestureDetector(
//                         child: const Icon(
//                           Icons.clear,
//                           size: 24,
//                         ),
//                         onTap: () => _textController.clear(),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 16.0),
//                   BaconFormTextInput(
//                     readOnly: true,
//                     enabled: true,
//                     // hasFloatingLabel: true,
//                     controller: _passwordController,
//                     hintText: "Bacon Form Text Input",
//                     obscureText: _hidePassword,
//                     // obscuringCharacter: "*",
//                     validator: (String? value) =>
//                         value != null && value.length < 10
//                             ? "The text should be longer than 10 characters."
//                             : null,
//                     onTapOutside: (PointerDownEvent _) =>
//                         FocusManager.instance.primaryFocus?.unfocus(),
//                     trailing: MouseRegion(
//                       cursor: SystemMouseCursors.click,
//                       child: MouseRegion(
//                         cursor: SystemMouseCursors.click,
//                         child: GestureDetector(
//                           child: IntrinsicWidth(
//                             child: Align(
//                               alignment: Alignment.centerRight,
//                               child: Text(
//                                 _hidePassword ? "Show" : "Hide",
//                                 style: DefaultTextStyle.of(context)
//                                     .style
//                                     .copyWith(
//                                         decoration: TextDecoration.underline),
//                               ),
//                             ),
//                           ),
//                           onTap: () =>
//                               setState(() => _hidePassword = !_hidePassword),
//                         ),
//                       ),
//                     ),
//                   ),
//                   BaconButton(
//                     label: const Text("Submit"),
//                     onTap: () => Form.of(context).validate(),
//                   ),
//                   const SizedBox(height: 16.0),
//                   const BaconTextInput(
//                     leading: Icon(Icons.search),
//                     hintText: "Leading Icon",
//                     trailing: Icon(Icons.clear),
//                   ),
//                   const SizedBox(height: 16.0),
//                   BaconTextInput(
//                     leading: const Icon(Icons.search),
//                     hintText: "Trailing Icon with Mouse Cursor",
//                     trailing: MouseRegion(
//                       cursor: SystemMouseCursors.click,
//                       child: GestureDetector(
//                         child: const Icon(
//                           Icons.clear,
//                           size: 24,
//                         ),
//                         onTap: () => log("Clear"),
//                       ),
//                     ),
//                   ),
//                   const TextDivider(
//                     text: "Divider with Text",
//                     paddingTop: 16.0,
//                   ),
//                   const BaconTextInput(
//                     hintText: "Email Address",
//                     hasFloatingLabel: true,
//                     helper: Text("We will never share your email address."),
//                     leading: Icon(Icons.email),
//                   ),
//                 ],
//               );
//             }),
//           ),
//         ),
//       ),
//     );
//   }
// }
