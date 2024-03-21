import 'package:bacon/bacon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solidart/flutter_solidart.dart';

void main() {
  runApp(const App());
}

// Maps the routes to the specific widget page.
final routes = <String, WidgetBuilder>{};
final routeToNameRegex = RegExp('(?:^/|-)([a-z])');

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Solid(
      providers: [
        Provider<Signal<ThemeMode>>(create: () => Signal(ThemeMode.light)),
      ],
      builder: (context) {
        final themeMode = context.observe<ThemeMode>();
        return BaconApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeMode,
          routes: routes,
          theme: BaconThemeData(
            brightness: Brightness.light,
            colorScheme: const BaconDefaultColorScheme.light(),
          ),
          darkTheme: BaconThemeData(
            brightness: Brightness.dark,
            colorScheme: const BaconDefaultColorScheme.dark(),
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
    return const Scaffold(
      body: Material(
        child: Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
