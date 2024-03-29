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
            BaconAlert(
              show: true,
              status: BaconAlertStatus.success,
              //leading: Icon(BaconIcons.cog),
              title: Text("Update available"),
              body: Text("A new software update is available. See what's new."),
            ),
          ],
        ),
      )),
    );
  }
}
