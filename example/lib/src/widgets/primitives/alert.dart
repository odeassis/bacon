import 'package:bacon/bacon.dart';
import 'package:example/src/widgets/text_divider.dart';
import 'package:flutter/material.dart';

class PrimitiveAlert extends StatelessWidget {
  static const String routeName = '/primitives/alert';
  const PrimitiveAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
        child: Column(
          children: [
            TextDivider(
              text: "Alert Size [large]",
              paddingTop: 0,
            ),
            BaconAlert.light(
              show: true,
              status: BaconAlertStatus.update,
              leading: Icon(BaconIcons.cog),
              title: Text("Update available"),
              body: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            ),
          ],
        ),
      )),
    );
  }
}
