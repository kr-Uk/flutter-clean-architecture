import 'package:go_router/go_router.dart';
import 'package:more_app/presentation/pages/home/home_page.dart';
import 'package:more_app/presentation/pages/login/login_page.dart';
import 'package:more_app/presentation/pages/splash/splash_page.dart';

abstract class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String login = '/login';
}

final appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
