import 'package:bacon/bacon.dart';
import 'package:example/src/widgets/text_divider.dart';
import 'package:flutter/material.dart';

enum ChoiceCustom { first, second }

enum ChoiceLabel { first, second }

class PrimitiveRadio extends StatefulWidget {
  static const path = '/primitives/radio';

  const PrimitiveRadio({super.key});

  @override
  State<PrimitiveRadio> createState() => _PrimitiveRadioState();
}

class _PrimitiveRadioState extends State<PrimitiveRadio> {
  ChoiceCustom? valueCustom = ChoiceCustom.first;
  ChoiceLabel? valueLabel = ChoiceLabel.first;

  bool isDisabled = false;
  bool isToggleable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
          child: Column(
            children: [
              const TextDivider(
                text: "BaconRadio",
                paddingTop: 0,
              ),
              BaconRadio(
                value: ChoiceCustom.first,
                groupValue: valueCustom,
                onChanged: isDisabled
                    ? null
                    : (ChoiceCustom? choice) =>
                        setState(() => valueCustom = choice),
              ),
              const SizedBox(height: 8),
              BaconRadio(
                value: ChoiceCustom.second,
                groupValue: valueCustom,
                onChanged: isDisabled
                    ? null
                    : (ChoiceCustom? choice) =>
                        setState(() => valueCustom = choice),
              ),
              const TextDivider(text: "BaconRadio with label"),
              BaconMenuItem(
                absorbGestures: true,
                onTap: isDisabled
                    ? null
                    : () => setState(
                          () => switch (valueLabel) {
                            ChoiceLabel.first when isToggleable => valueLabel =
                                null,
                            _ => valueLabel = ChoiceLabel.first,
                          },
                        ),
                label: const Text("With label #1"),
                trailing: BaconRadio(
                  value: ChoiceLabel.first,
                  groupValue: valueLabel,
                  tapAreaSizeValue: 0,
                  onChanged: isDisabled ? null : (_) {},
                ),
              ),
              const SizedBox(height: 8),
              BaconMenuItem(
                absorbGestures: true,
                onTap: isDisabled
                    ? null
                    : () => setState(
                          () => switch (valueLabel) {
                            ChoiceLabel.second when isToggleable => valueLabel =
                                null,
                            _ => valueLabel = ChoiceLabel.second,
                          },
                        ),
                label: const Text("With label #2"),
                trailing: BaconRadio(
                  value: ChoiceLabel.second,
                  groupValue: valueLabel,
                  tapAreaSizeValue: 0,
                  onChanged: isDisabled ? null : (_) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
