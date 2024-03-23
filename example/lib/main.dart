import 'package:bacon/bacon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solidart/flutter_solidart.dart';

void main() {
  runApp(const App());
}

// Maps the routes to the specific widget page.
final routes = <String, WidgetBuilder>{};
final routeToNameRegex = RegExp('(?:^/|-)([a-z])');

enum Alignm {
  topRight,
  topLeft,
  bottomRight,
  bottomLeft,
  centerRight,
  centerLeft,
  center,
  topCenter,
  bottomCenter;

  Alignment toAlignment() {
    return switch (this) {
      topRight => Alignment.topRight,
      topLeft => Alignment.topLeft,
      bottomRight => Alignment.bottomRight,
      bottomLeft => Alignment.bottomLeft,
      centerRight => Alignment.centerRight,
      centerLeft => Alignment.centerLeft,
      center => Alignment.center,
      topCenter => Alignment.topCenter,
      bottomCenter => Alignment.bottomCenter,
    };
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Solid(
      providers: [
        Provider<Signal<ThemeMode>>(create: () => Signal(ThemeMode.system)),
      ],
      builder: (context) {
        final themeMode = context.observe<ThemeMode>();
        return BaconApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeMode,
          routes: routes,
          theme: BaconThemeData(
            brightness: Brightness.light,
            shape: const BaconDefaultShapeTheme.defaultShape(),
            colorScheme: BaconDefaultColorScheme.light(),
          ),
          darkTheme: BaconThemeData(
            brightness: Brightness.dark,
            shape: const BaconDefaultShapeTheme.rounded(),
            colorScheme: BaconDefaultColorScheme.dark(),
          ),
          home: const MainPage(),
        );
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final focusNode = FocusNode();
    // var size = BaconButtonSize.regular;
    // var enabled = true;
    var alignment = Alignm.bottomRight;
    return const Scaffold(
      body: Material(
        child: Center(
          child: BaconAlert(
            title: Text('My alert and notification component'),
            body: Text(
                "This is the body of the alert located at the bottom right corner of the screen. It is a large alert with an outlined style."),
            size: BaconAlertSize.large,
            style: BaconAlertStyle.filled,
          ),
        ),
      ),
    );
  }
}
