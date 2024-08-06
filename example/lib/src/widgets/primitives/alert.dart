import 'package:example/src/widgets/text_divider.dart';
import 'package:flutter/material.dart';
import 'package:hive/bacon.dart';

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
                  child: HiveAlert(
                    show: true,
                    title: Text("Your alert text goes here"),
                    size: AlertSize.large,
                    body: Text("Your alert text goes here"),
                    link: Text("Link"),
                  ),
                ),
                SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.light(
                //         show: true,
                //         status: HiveAlertStatus.info,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Information Large Light"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.info,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Information Large Outlined"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //   ],
                // ),
                // TextDivider(
                //   text: "Alert [Success] [Large]",
                //   paddingTop: 16.0,
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Expanded(
                //       child: HiveAlert(
                //         show: true,
                //         status: HiveAlertStatus.success,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Success Large Fill"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.light(
                //         show: true,
                //         status: HiveAlertStatus.success,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Success Large Light"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.success,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Success Large Outlined"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //   ],
                // ),
                // TextDivider(
                //   text: "Alert [Warning] [Large]",
                //   paddingTop: 16.0,
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Expanded(
                //       child: HiveAlert(
                //         show: true,
                //         status: HiveAlertStatus.warning,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Warning Large Fill"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.light(
                //         show: true,
                //         status: HiveAlertStatus.warning,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Warning Large Light"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.warning,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Warning Large Outlined"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //   ],
                // ),
                // TextDivider(
                //   text: "Alert [Error] [Large]",
                //   paddingTop: 16.0,
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Expanded(
                //       child: HiveAlert(
                //         show: true,
                //         status: HiveAlertStatus.error,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Error Large Fill"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.light(
                //         show: true,
                //         status: HiveAlertStatus.error,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Error Large Light"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.error,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Error Large Outlined"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //   ],
                // ),
                // TextDivider(
                //   text: "Alert [Update] [Large]",
                //   paddingTop: 16.0,
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Expanded(
                //       child: HiveAlert(
                //         show: true,
                //         status: HiveAlertStatus.update,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Fill"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.light(
                //         show: true,
                //         status: HiveAlertStatus.update,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Light"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.update,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Outlined"),
                //         size: HiveAlertSize.large,
                //         body: Text(
                //             "lore ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                //       ),
                //     ),
                //   ],
                // ),
                // TextDivider(
                //   text: "Alert [Information] [Medium]",
                //   paddingTop: 16.0,
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Expanded(
                //       child: HiveAlert(
                //         show: true,
                //         status: HiveAlertStatus.info,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Fill"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //         child: HiveAlert.light(
                //       show: true,
                //       status: HiveAlertStatus.info,
                //       leading: Icon(HiveIcons.cog),
                //       title: Text("Alert Update Large Light"),
                //       size: HiveAlertSize.medium,
                //     )),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.info,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Outlined"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
                //   ],
                // ),
                // TextDivider(
                //   text: "Alert [Success] [Medium]",
                //   paddingTop: 16.0,
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Expanded(
                //       child: HiveAlert(
                //         show: true,
                //         status: HiveAlertStatus.success,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Fill"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //         child: HiveAlert.light(
                //       show: true,
                //       status: HiveAlertStatus.success,
                //       leading: Icon(HiveIcons.cog),
                //       title: Text("Alert Update Large Light"),
                //       size: HiveAlertSize.medium,
                //     )),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.success,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Outlined"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
                //   ],
                // ),
                // TextDivider(
                //   text: "Alert [Warning] [Medium]",
                //   paddingTop: 16.0,
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Expanded(
                //       child: HiveAlert(
                //         show: true,
                //         status: HiveAlertStatus.warning,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Fill"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //         child: HiveAlert.light(
                //       show: true,
                //       status: HiveAlertStatus.warning,
                //       leading: Icon(HiveIcons.cog),
                //       title: Text("Alert Update Large Light"),
                //       size: HiveAlertSize.medium,
                //     )),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.warning,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Outlined"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
                //   ],
                // ),
                // TextDivider(
                //   text: "Alert [Error] [Medium]",
                //   paddingTop: 16.0,
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Expanded(
                //       child: HiveAlert(
                //         show: true,
                //         status: HiveAlertStatus.error,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Fill"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //         child: HiveAlert.light(
                //       show: true,
                //       status: HiveAlertStatus.error,
                //       leading: Icon(HiveIcons.cog),
                //       title: Text("Alert Update Large Light"),
                //       size: HiveAlertSize.medium,
                //     )),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.error,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Outlined"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
                //   ],
                // ),
                // TextDivider(
                //   text: "Alert [Update] [Medium]",
                //   paddingTop: 16.0,
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Expanded(
                //       child: HiveAlert(
                //         show: true,
                //         status: HiveAlertStatus.update,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Fill"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //         child: HiveAlert.light(
                //       show: true,
                //       status: HiveAlertStatus.update,
                //       leading: Icon(HiveIcons.cog),
                //       title: Text("Alert Update Large Light"),
                //       size: HiveAlertSize.medium,
                //     )),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: HiveAlert.outlined(
                //         show: true,
                //         status: HiveAlertStatus.update,
                //         leading: Icon(HiveIcons.cog),
                //         title: Text("Alert Update Large Outlined"),
                //         size: HiveAlertSize.medium,
                //       ),
                //     ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
