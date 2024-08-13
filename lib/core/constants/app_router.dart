import 'package:go_router/go_router.dart';
import 'package:my_trip_planner/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const LoginScreen(),
  ),
]);
