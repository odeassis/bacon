import 'package:flutter/material.dart';

class BaconToaster extends StatelessWidget {
  const BaconToaster({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: child,
    );
  }
}
