import 'package:example/main.dart';
import 'package:example/src/widgets/primitives/alert.dart';
import 'package:example/src/widgets/primitives/avatar.dart';
import 'package:example/src/widgets/primitives/badge.dart';
import 'package:example/src/widgets/primitives/button.dart';
import 'package:example/src/widgets/primitives/checkbox.dart';
import 'package:example/src/widgets/primitives/divider.dart';
import 'package:example/src/widgets/primitives/tag.dart';
import 'package:example/src/widgets/primitives/text_input.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, GoRouterState state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/primitives/alert',
    builder: (context, GoRouterState state) => const PrimitiveAlert(),
  ),
  GoRoute(
    path: '/primitives/avatar',
    builder: (context, GoRouterState state) => const PrimitiveAvatar(),
  ),
  GoRoute(
    path: '/primitives/badge',
    builder: (context, GoRouterState state) => const PrimitiveBadge(),
  ),
  GoRoute(
    path: '/primitives/button',
    builder: (context, GoRouterState state) => const PrimitiveButton(),
  ),
  GoRoute(
    path: '/primitives/checkbox',
    builder: (context, GoRouterState state) => const PrimitiveCheckbox(),
  ),
  GoRoute(
    path: '/primitives/divider',
    builder: (context, GoRouterState state) => const PrimitiveDivider(),
  ),
  GoRoute(
    path: '/primitives/tag',
    builder: (context, GoRouterState state) => const PrimitiveTag(),
  ),
  GoRoute(
    path: '/primitives/text_input',
    builder: (context, GoRouterState state) => const PrimitiveTextInput(),
  ),
]);
