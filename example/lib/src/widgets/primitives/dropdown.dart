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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
        child: Column(
          children: [
            const TextDivider(
              text: "Tag",
              paddingTop: 0,
            ),
            BaconDropdown(
              show: _showChoices,
              minWidth: 250,
              content: const Column(
                children: [
                  Text("Choice 1"),
                  Text("Choice 2"),
                  Text("Choice 3"),
                  Text("Choice 4"),
                ],
              ),
              child: BaconTextInput(
                width: 270,
                readOnly: true,
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
        ),
      )),
    );
  }
}
