import 'package:bacon/bacon.dart';
import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;
  final double paddingTop;
  final double paddingBottom;

  const TextDivider({
    super.key,
    required this.text,
    this.paddingTop = 32,
    this.paddingBottom = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: Row(
        children: [
          const Expanded(
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              text,
              style: context.typography?.label.md.copyWith(
                color: context.contentColors?.primary,
              ),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
