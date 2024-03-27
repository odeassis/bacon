import 'package:example/main.dart';
import 'package:example/src/widgets/primitives/avatar.dart';
import 'package:example/src/widgets/primitives/badge.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, GoRouterState state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/primitives/avatar',
    builder: (context, GoRouterState state) => const PrimitiveAvatar(),
  ),
  GoRoute(
    path: '/primitives/badge',
    builder: (context, GoRouterState state) => const PrimitiveBadge(),
  ),
]);
