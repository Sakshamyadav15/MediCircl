import 'package:flutter/material.dart';
// import '../views/auth/login_page.dart';
import '../views/auth/sign-up.dart';
// import '../views/dashboard/dashboard_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String dashboard = '/dashboard';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case signup:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case dashboard:
        return MaterialPageRoute(builder: (_) => DashboardPage());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
