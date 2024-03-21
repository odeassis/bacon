import 'package:flutter/material.dart';

enum BaconButtonVariant {
  primary,
  destructive,
  outline,
  secondary,
  ghost,
  link,
}

enum BaconButtonSize {
  regular,
  sm,
  lg,
  icon,
}

class BaconButton extends StatelessWidget {
  const BaconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(8),
      child: const Text("Button Text"),
    );
  }
}
