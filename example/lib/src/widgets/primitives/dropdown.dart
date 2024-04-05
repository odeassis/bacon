import 'package:bacon/bacon.dart';
import 'package:example/src/widgets/text_divider.dart';
import 'package:flutter/material.dart';

class PrimitiveDropdown extends StatefulWidget {
  static const String routeName = '/primitives/dropdown';
  const PrimitiveDropdown({super.key});

  @override
  State<PrimitiveDropdown> createState() => _PrimitiveDropdownState();
}

class _PrimitiveDropdownState extends State<PrimitiveDropdown> {
  bool _showChoices = false;
  bool _choice1 = false;
  final bool _choice2 = false;
  bool _choice3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TextDivider(
            text: "Tag",
            paddingTop: 0,
          ),
          BaconDropdown(
            show: _showChoices,
            minWidth: 250,
            constrainWidthToChild: true,
            onTapOutside: () => setState(() => _showChoices = false),
            content: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Column(
                children: [
                  BaconMenuItem(
                    absorbGestures: true,
                    onTap: () => setState(() => _choice1 = !_choice1),
                    label: const Text("Option 1"),
                    trailing: BaconCheckbox(
                      tapAreaSizeValue: 0,
                      value: _choice1,
                      onChanged: (_) {},
                    ),
                  ),
                  BaconMenuItem(
                    absorbGestures: true,
                    onTap: () {},
                    label: const Text("Option 2"),
                    trailing: BaconCheckbox(
                      tapAreaSizeValue: 0,
                      value: _choice2,
                      onChanged: (_) {},
                    ),
                  ),
                  BaconMenuItem(
                    absorbGestures: true,
                    onTap: () => setState(() => _choice3 = !_choice3),
                    label: const Text("Option 3"),
                    trailing: BaconCheckbox(
                      tapAreaSizeValue: 0,
                      value: _choice3,
                      onChanged: (_) {},
                    ),
                  ),
                ],
              ),
            ),
            child: BaconTextInput(
              width: 270,
              readOnly: true,
              canRequestFocus: false,
              mouseCursor: MouseCursor.defer,
              hintText: "Choose an option",
              onTap: () => setState(() => _showChoices = !_showChoices),
              trailing: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Center(
                  child: AnimatedRotation(
                    duration: const Duration(milliseconds: 200),
                    turns: _showChoices ? -0.5 : 0,
                    child: const Icon(
                      Icons.arrow_drop_down,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
