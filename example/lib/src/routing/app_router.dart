import 'package:example/main.dart';
import 'package:example/src/widgets/primitives/alert.dart';
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
]);
