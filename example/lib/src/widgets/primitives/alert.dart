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
              text: "Alert [Information] [Large]",
              paddingTop: 0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Your alert text goes here"),
                    size: BaconAlertSize.large,
                    body: Text("Your alert text goes here"),
                    link: Text("Link"),
                    trailing: Icon(BaconIcons.delete),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.light(
                    show: true,
                    status: BaconAlertStatus.info,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Information Large Light"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.info,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Information Large Outlined"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
              ],
            ),
            TextDivider(
              text: "Alert [Success] [Large]",
              paddingTop: 16.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    status: BaconAlertStatus.success,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Success Large Fill"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.light(
                    show: true,
                    status: BaconAlertStatus.success,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Success Large Light"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.success,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Success Large Outlined"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
              ],
            ),
            TextDivider(
              text: "Alert [Warning] [Large]",
              paddingTop: 16.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    status: BaconAlertStatus.warning,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Warning Large Fill"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.light(
                    show: true,
                    status: BaconAlertStatus.warning,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Warning Large Light"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.warning,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Warning Large Outlined"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
              ],
            ),
            TextDivider(
              text: "Alert [Error] [Large]",
              paddingTop: 16.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    status: BaconAlertStatus.error,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Error Large Fill"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.light(
                    show: true,
                    status: BaconAlertStatus.error,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Error Large Light"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.error,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Error Large Outlined"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
              ],
            ),
            TextDivider(
              text: "Alert [Update] [Large]",
              paddingTop: 16.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    status: BaconAlertStatus.update,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Fill"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.light(
                    show: true,
                    status: BaconAlertStatus.update,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Light"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.update,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Outlined"),
                    size: BaconAlertSize.large,
                    body: Text(
                        "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                ),
              ],
            ),
            TextDivider(
              text: "Alert [Information] [Medium]",
              paddingTop: 16.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    status: BaconAlertStatus.info,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Fill"),
                    size: BaconAlertSize.medium,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                    child: BaconAlert.light(
                  show: true,
                  status: BaconAlertStatus.info,
                  leading: Icon(BaconIcons.cog),
                  title: Text("Alert Update Large Light"),
                  size: BaconAlertSize.medium,
                )),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.info,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Outlined"),
                    size: BaconAlertSize.medium,
                  ),
                ),
              ],
            ),
            TextDivider(
              text: "Alert [Success] [Medium]",
              paddingTop: 16.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    status: BaconAlertStatus.success,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Fill"),
                    size: BaconAlertSize.medium,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                    child: BaconAlert.light(
                  show: true,
                  status: BaconAlertStatus.success,
                  leading: Icon(BaconIcons.cog),
                  title: Text("Alert Update Large Light"),
                  size: BaconAlertSize.medium,
                )),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.success,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Outlined"),
                    size: BaconAlertSize.medium,
                  ),
                ),
              ],
            ),
            TextDivider(
              text: "Alert [Warning] [Medium]",
              paddingTop: 16.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    status: BaconAlertStatus.warning,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Fill"),
                    size: BaconAlertSize.medium,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                    child: BaconAlert.light(
                  show: true,
                  status: BaconAlertStatus.warning,
                  leading: Icon(BaconIcons.cog),
                  title: Text("Alert Update Large Light"),
                  size: BaconAlertSize.medium,
                )),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.warning,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Outlined"),
                    size: BaconAlertSize.medium,
                  ),
                ),
              ],
            ),
            TextDivider(
              text: "Alert [Error] [Medium]",
              paddingTop: 16.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    status: BaconAlertStatus.error,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Fill"),
                    size: BaconAlertSize.medium,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                    child: BaconAlert.light(
                  show: true,
                  status: BaconAlertStatus.error,
                  leading: Icon(BaconIcons.cog),
                  title: Text("Alert Update Large Light"),
                  size: BaconAlertSize.medium,
                )),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.error,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Outlined"),
                    size: BaconAlertSize.medium,
                  ),
                ),
              ],
            ),
            TextDivider(
              text: "Alert [Update] [Medium]",
              paddingTop: 16.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaconAlert(
                    show: true,
                    status: BaconAlertStatus.update,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Fill"),
                    size: BaconAlertSize.medium,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                    child: BaconAlert.light(
                  show: true,
                  status: BaconAlertStatus.update,
                  leading: Icon(BaconIcons.cog),
                  title: Text("Alert Update Large Light"),
                  size: BaconAlertSize.medium,
                )),
                SizedBox(width: 16.0),
                Expanded(
                  child: BaconAlert.outlined(
                    show: true,
                    status: BaconAlertStatus.update,
                    leading: Icon(BaconIcons.cog),
                    title: Text("Alert Update Large Outlined"),
                    size: BaconAlertSize.medium,
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
