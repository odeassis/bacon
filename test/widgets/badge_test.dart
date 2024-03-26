import 'package:bacon/src/theme/theme.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:bacon/src/widgets/badge/badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BaconBadge renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BaconBadge(
            label: Text('Test Badge'),
          ),
        ),
      ),
    );

    // Verify that the badge renders correctly.
    expect(find.text('Test Badge'), findsOneWidget);
  });

  testWidgets('BaconBadge onTap callback is triggered',
      (WidgetTester tester) async {
    bool tapped = false;

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BaconBadge(
            label: const Text('Test Badge'),
            onTap: () {
              tapped = true;
            },
          ),
        ),
      ),
    );

    // Tap the badge.
    await tester.tap(find.text('Test Badge'));
    await tester.pump();

    // Verify that onTap callback is triggered.
    expect(tapped, true);
  });

  testWidgets("BaconBadge interacts with themes", (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData.light().copyWith(
          extensions: <ThemeExtension<dynamic>>[
            BaconTheme(tokens: BaconTokes.light)
          ],
        ),
        darkTheme: ThemeData.dark().copyWith(
          extensions: <ThemeExtension<dynamic>>[
            BaconTheme(tokens: BaconTokes.dark)
          ],
        ),
        themeMode: ThemeMode.light,
        home: const Scaffold(
          body: BaconBadge(
            label: Text('Test Badge'),
          ),
        ),
      ),
    );

    // Verify that the badge renders correctly.
    expect(find.text('Test Badge'), findsOneWidget);

    // Verify that the badge has the correct theme.
    final badge = tester.widget<BaconBadge>(find.byType(BaconBadge));
    expect(badge.backgroundColor,
        equals(BaconTokes.light.contentColor.accentGreen));
  });
}
