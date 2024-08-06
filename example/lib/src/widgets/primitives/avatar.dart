// import 'package:bacon/bacon.dart';
// import 'package:example/src/widgets/text_divider.dart';
// import 'package:flutter/material.dart';

// class PrimitiveAvatar extends StatelessWidget {
//   static const String routeName = '/primitives/avatar';
//   const PrimitiveAvatar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//           child: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
//         child: Column(
//           children: [
//             TextDivider(
//               text: "Avatar Size [x-large]",
//               paddingTop: 0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 BaconAvatar(
//                   size: BaconAvatarSize.xlarge,
//                   showBadge: true,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.xlarge,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.xlarge,
//                   showBadge: true,
//                   content: Text('FR'),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.xlarge,
//                   content: Text('FR'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 32.0),
//             TextDivider(
//               text: "Avatar Size [large]",
//               paddingTop: 0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 BaconAvatar(
//                   size: BaconAvatarSize.large,
//                   showBadge: true,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.large,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.large,
//                   showBadge: true,
//                   content: Text('FR'),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.large,
//                   content: Text('FR'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 32.0),
//             TextDivider(
//               text: "Avatar Size [medium]",
//               paddingTop: 0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 BaconAvatar(
//                   size: BaconAvatarSize.medium,
//                   showBadge: true,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.medium,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.medium,
//                   showBadge: true,
//                   content: Text('FR'),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.medium,
//                   content: Text('FR'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 32.0),
//             TextDivider(
//               text: "Avatar Size [small]",
//               paddingTop: 0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 BaconAvatar(
//                   size: BaconAvatarSize.small,
//                   showBadge: true,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.small,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.small,
//                   showBadge: true,
//                   content: Text('FR'),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.small,
//                   content: Text('FR'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 32.0),
//             TextDivider(
//               text: "Avatar Size [x-small]",
//               paddingTop: 0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 BaconAvatar(
//                   size: BaconAvatarSize.xsmall,
//                   showBadge: true,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.xsmall,
//                   imageProvider: AssetImage("assets/img/pig.jpg"),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.xsmall,
//                   showBadge: true,
//                   content: Text('FR'),
//                 ),
//                 SizedBox(width: 16.0),
//                 BaconAvatar(
//                   size: BaconAvatarSize.xsmall,
//                   content: Text('FR'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
