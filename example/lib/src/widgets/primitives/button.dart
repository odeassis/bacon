import 'dart:async';
import 'dart:developer';

import 'package:bacon/bacon.dart';
import 'package:example/src/widgets/text_divider.dart';
import 'package:flutter/material.dart';

class PrimitiveButton extends StatelessWidget {
  static const String routeName = '/primitives/button';
  const PrimitiveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool showPulseEffect = true;
    Timer.periodic(const Duration(seconds: 5), (timer) {
      showPulseEffect = !showPulseEffect;
      timer.cancel();
      log("showPulseEffect: $showPulseEffect");
    });

    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
        child: Column(
          children: [
            // PRIMARY BUTTONS
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 16.0,
              children: [
                const TextDivider(
                  text: "Button Primary [filled] [md | sm]",
                  paddingTop: 0,
                ),
                BaconButton(
                  showPulseEffect: showPulseEffect,
                  // showScaleEffect: true,
                  showPulseEffectJiggle: false,
                  leading: const Icon(Icons.add),
                  label: const Text("Button medium"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton(
                  buttonSize: BaconButtonSize.sm,
                  leading: const Icon(Icons.add),
                  label: const Text("Button small"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                const TextDivider(
                  text: "Button Primary [light] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton.light(
                  leading: const Icon(Icons.add),
                  label: const Text("Button medium"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton.light(
                  buttonSize: BaconButtonSize.sm,
                  leading: const Icon(Icons.add),
                  label: const Text("Button small"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                const TextDivider(
                  text: "Button Primary [outline] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton.outlined(
                  leading: const Icon(Icons.add),
                  label: const Text("Button medium"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton.outlined(
                  buttonSize: BaconButtonSize.sm,
                  leading: const Icon(Icons.add),
                  label: const Text("Button small"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                const TextDivider(
                  text: "Button Primary [disabled] [md | sm]",
                  paddingTop: 16,
                ),
                const BaconButton(
                  leading: Icon(Icons.add),
                  label: Text("Button medium"),
                  trailing: Icon(Icons.add),
                ),
                const BaconButton(
                  buttonSize: BaconButtonSize.sm,
                  leading: Icon(Icons.add),
                  label: Text("Button small"),
                  trailing: Icon(Icons.add),
                ),
                const TextDivider(
                  text: "Button Primary [icon] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton.icon(
                  icon: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton.icon(
                  buttonSize: BaconButtonSize.sm,
                  icon: const Icon(Icons.add),
                  onTap: () => {},
                ),
              ],
            ),

            // NEUTRAL BUTTONS
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 16.0,
              children: [
                const TextDivider(
                  text: "Button Neutral [filled] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton(
                  type: BaconButtonType.neutral,
                  leading: const Icon(Icons.add),
                  label: const Text("Button medium"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton(
                  type: BaconButtonType.neutral,
                  buttonSize: BaconButtonSize.sm,
                  leading: const Icon(Icons.add),
                  label: const Text("Button small"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                const TextDivider(
                  text: "Button Neutral [light] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton.light(
                  type: BaconButtonType.neutral,
                  leading: const Icon(Icons.add),
                  label: const Text("Button medium"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton.light(
                  type: BaconButtonType.neutral,
                  buttonSize: BaconButtonSize.sm,
                  leading: const Icon(Icons.add),
                  label: const Text("Button small"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                const TextDivider(
                  text: "Button Neutral [outlined] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton.outlined(
                  type: BaconButtonType.neutral,
                  leading: const Icon(Icons.add),
                  label: const Text("Button medium"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton.outlined(
                  type: BaconButtonType.neutral,
                  buttonSize: BaconButtonSize.sm,
                  leading: const Icon(Icons.add),
                  label: const Text("Button small"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                const TextDivider(
                  text: "Button Neutral [disabled] [md | sm]",
                  paddingTop: 16,
                ),
                const BaconButton(
                  type: BaconButtonType.neutral,
                  leading: Icon(Icons.add),
                  label: Text("Button medium"),
                  trailing: Icon(Icons.add),
                ),
                const BaconButton(
                  type: BaconButtonType.neutral,
                  buttonSize: BaconButtonSize.sm,
                  leading: Icon(Icons.add),
                  label: Text("Button small"),
                  trailing: Icon(Icons.add),
                ),
                const TextDivider(
                  text: "Button Neutral [icon] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton.icon(
                  type: BaconButtonType.neutral,
                  icon: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton.icon(
                  type: BaconButtonType.neutral,
                  buttonSize: BaconButtonSize.sm,
                  icon: const Icon(Icons.add),
                  onTap: () => {},
                ),
              ],
            ),

            // ERROR BUTTONS
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 16.0,
              children: [
                const TextDivider(
                  text: "Button Error [filled] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton(
                  type: BaconButtonType.error,
                  leading: const Icon(Icons.add),
                  label: const Text("Button medium"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton(
                  type: BaconButtonType.error,
                  leading: const Icon(Icons.add),
                  buttonSize: BaconButtonSize.sm,
                  label: const Text("Button small"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                const TextDivider(
                  text: "Button Error [light] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton.light(
                  type: BaconButtonType.error,
                  leading: const Icon(Icons.add),
                  label: const Text("Button medium"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton.light(
                  type: BaconButtonType.error,
                  buttonSize: BaconButtonSize.sm,
                  leading: const Icon(Icons.add),
                  label: const Text("Button small"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                const TextDivider(
                  text: "Button Error [outlined] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton.outlined(
                  type: BaconButtonType.error,
                  leading: const Icon(Icons.add),
                  label: const Text("Button medium"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton.outlined(
                  type: BaconButtonType.error,
                  buttonSize: BaconButtonSize.sm,
                  leading: const Icon(Icons.add),
                  label: const Text("Button small"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {},
                ),
                const TextDivider(
                  text: "Button Error [disabled] [md | sm]",
                  paddingTop: 16,
                ),
                const BaconButton(
                  type: BaconButtonType.error,
                  leading: Icon(Icons.add),
                  label: Text("Button medium"),
                  trailing: Icon(Icons.add),
                ),
                const BaconButton(
                  type: BaconButtonType.error,
                  buttonSize: BaconButtonSize.sm,
                  leading: Icon(Icons.add),
                  label: Text("Button small"),
                  trailing: Icon(Icons.add),
                ),
                const TextDivider(
                  text: "Button Error [icon] [md | sm]",
                  paddingTop: 16,
                ),
                BaconButton.icon(
                  type: BaconButtonType.error,
                  icon: const Icon(Icons.add),
                  onTap: () => {},
                ),
                BaconButton.icon(
                  type: BaconButtonType.error,
                  buttonSize: BaconButtonSize.sm,
                  icon: const Icon(Icons.add),
                  onTap: () => {},
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
