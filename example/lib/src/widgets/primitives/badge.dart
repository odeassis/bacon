import 'package:bacon/bacon.dart';
import 'package:example/src/widgets/text_divider.dart';
import 'package:flutter/material.dart';

class PrimitiveBadge extends StatelessWidget {
  static const String routeName = '/primitives/badge';
  const PrimitiveBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
        child: Column(
          children: [
            TextDivider(
              text: "Badge Base [filled] [md]",
              paddingTop: 0,
            ),
            BaconBadge(
              label: Text('Badge'),
              badgeSize: BaconBadgeSize.md,
            ),
            SizedBox(height: 8.0),
            BaconBadge(
              label: Text('[leading] Badge'),
              badgeSize: BaconBadgeSize.md,
              leading: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadge(
              label: Text('Badge [trailing]'),
              badgeSize: BaconBadgeSize.md,
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadge(
              label: Text('[leading] Badge [trailing]'),
              badgeSize: BaconBadgeSize.md,
              leading: Icon(BaconIcons.cog),
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 32.0),
            TextDivider(
              text: "Badge Base [filled] [sm]",
              paddingTop: 8.0,
            ),
            BaconBadge(
              label: Text('Badge'),
            ),
            SizedBox(height: 8.0),
            BaconBadge(
              label: Text('[leading] Badge'),
              leading: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadge(
              label: Text('Badge [trailing]'),
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 32),
            TextDivider(
              text: "Badge Base [outlined] [md]",
              paddingTop: 0,
            ),
            BaconBadgeOutlined(
              label: Text('Badge'),
              badgeSize: BaconBadgeSize.md,
            ),
            SizedBox(height: 8.0),
            BaconBadgeOutlined(
              label: Text('[leading] Badge'),
              badgeSize: BaconBadgeSize.md,
              leading: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadgeOutlined(
              label: Text('Badge [trailing]'),
              badgeSize: BaconBadgeSize.md,
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadgeOutlined(
              label: Text('[leading] Badge [trailing]'),
              badgeSize: BaconBadgeSize.md,
              leading: Icon(BaconIcons.cog),
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 32),
            TextDivider(
              text: "Badge Base [outlined] [sm]",
              paddingTop: 8.0,
            ),
            BaconBadgeOutlined(
              label: Text('Badge'),
            ),
            SizedBox(height: 8.0),
            BaconBadgeOutlined(
              label: Text('[leading] Badge'),
              leading: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadgeOutlined(
              label: Text('Badge [trailing]'),
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadgeOutlined(
              label: Text('[leading] Badge [trailing]'),
              leading: Icon(BaconIcons.cog),
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 32),
            TextDivider(
              text: "Badge Base [light] [md]",
              paddingTop: 0,
            ),
            BaconBadgeLight(
              label: Text('Badge'),
              badgeSize: BaconBadgeSize.md,
            ),
            SizedBox(height: 8.0),
            BaconBadgeLight(
              label: Text('[leading] Badge'),
              badgeSize: BaconBadgeSize.md,
              leading: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadgeLight(
              label: Text('Badge [trailing]'),
              badgeSize: BaconBadgeSize.md,
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadgeLight(
              label: Text('[leading] Badge [trailing]'),
              badgeSize: BaconBadgeSize.md,
              leading: Icon(BaconIcons.cog),
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 32),
            TextDivider(
              text: "Badge Base [light] [sm]",
              paddingTop: 8.0,
            ),
            BaconBadgeLight(
              label: Text('Badge'),
            ),
            SizedBox(height: 8.0),
            BaconBadgeLight(
              label: Text('[leading] Badge'),
              leading: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadgeLight(
              label: Text('Badge [trailing]'),
              trailing: Icon(BaconIcons.cog),
            ),
            SizedBox(height: 8.0),
            BaconBadgeLight(
              label: Text('[leading] Badge [trailing]'),
              leading: Icon(BaconIcons.cog),
              trailing: Icon(BaconIcons.cog),
            ),
          ],
        ),
      )),
    );
  }
}
