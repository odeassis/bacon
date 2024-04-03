import 'package:bacon/bacon.dart';
import 'package:example/src/widgets/text_divider.dart';
import 'package:flutter/material.dart';

class PrimitiveTag extends StatelessWidget {
  static const String routeName = '/primitives/tag';
  const PrimitiveTag({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
        child: Column(
          children: [
            TextDivider(
              text: "Tag",
              paddingTop: 0,
            ),
            BaconTag(
              label: Text("Tag"),
            ),
          ],
        ),
      )),
    );
  }
}
