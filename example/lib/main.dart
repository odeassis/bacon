import 'package:bacon/bacon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(extensions: <ThemeExtension<dynamic>>[
        BaconTheme(tokens: BaconTokes.light)
      ]),
      darkTheme:
          ThemeData.dark().copyWith(extensions: <ThemeExtension<dynamic>>[
        BaconTheme(
            tokens: BaconTokes.dark.copyWith(
                borderRadius: const BaconDefaultBorderRadius.rounded(),
                gapScale: const BaconDefaultAvatarScale.expandedScale(),
                componentScale:
                    const BaconDefaultComponentScale.defaultScale()))
      ]),
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main Page'),
        ),
        body: const Center(
          child: BaconBadge(
            label: Text('Bacon Badge'),
            leading: Icon(BaconIcons.check_circle),
            tagSize: BaconBadgeSize.md,
          ),
        ),
      ),
    );
  }
}
