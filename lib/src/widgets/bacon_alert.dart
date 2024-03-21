import 'package:bacon/src/theme/components/decorator.dart';
import 'package:bacon/src/theme/theme.dart';
import 'package:flutter/material.dart';

class BaconAlert extends StatelessWidget {
  const BaconAlert({
    required this.title,
    this.body,
    this.link,
    this.showBody,
    this.showLink,
    super.key,
  });

  final String title;
  final String? body;
  final bool? showBody;
  final String? link;
  final bool? showLink;

  @override
  Widget build(BuildContext context) {
    final theme = BaconTheme.of(context);
    //final baseColor = status.getColor(context);

    final effectiveDecoration = BaconDecoration(
      border: BaconBorder(
        color: theme.colorScheme.borderBrand,
        borderRadius: theme.radius,
        padding: const EdgeInsets.all(16),
      ),
    );

    return const Center(
      child: Text(
        "sadkjash",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
