import 'package:bacon/bacon.dart';
import 'package:example/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData.light().copyWith(extensions: <ThemeExtension<dynamic>>[
        BaconTheme(tokens: BaconTokens.light)
      ]),
      darkTheme: ThemeData.dark().copyWith(
          extensions: <ThemeExtension<dynamic>>[
            BaconTheme(tokens: BaconTokens.dark)
          ]),
      themeMode: ThemeMode.light,
    );
  }
}

class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.baconTheme?.tokens.modes.background.primary,
      appBar: AppBar(title: const Text('Bacon Design System Widgets')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BaconButton(
                onTap: () => context.go('/primitives/alert'),
                label: const Text('Alert Widget'),
              ),
              const SizedBox(height: 16.0),
              BaconButton(
                onTap: () => context.go('/primitives/avatar'),
                label: const Text('Avatar Widget'),
              ),
              const SizedBox(height: 16.0),
              BaconButton(
                onTap: () => context.go('/primitives/badge'),
                label: const Text('Badge Widget'),
              ),
              const SizedBox(height: 16.0),
              BaconButton(
                onTap: () => context.go('/primitives/button'),
                label: const Text('Button Widget'),
              ),
              const SizedBox(height: 16.0),
              BaconButton(
                onTap: () => context.go('/primitives/divider'),
                label: const Text('Divider Widget'),
              ),
              const SizedBox(height: 16.0),
              BaconButton(
                onTap: () => context.go('/primitives/text_input'),
                label: const Text('Text Input Widget'),
              ),
              const SizedBox(height: 16.0),
              BaconButton(
                onTap: () => context.go('/primitives/tag'),
                label: const Text('Tag Widget'),
              ),
              const SizedBox(height: 16.0),
              BaconButton(
                onTap: () => context.go('/primitives/checkbox'),
                label: const Text('Checkbox Widget'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
