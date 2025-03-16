import 'package:flutter/material.dart';
import '../views/dashboard/pharmacy.dart';
import '../views/auth/sign-up.dart';
import '../views/auth/login.dart';
import '../views/dashboard/dashboard.dart';
import '../views/dashboard/chat_screen.dart';
import '../views/dashboard/accounts.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String dashboard = '/dashboard';
  static const String pharmacy = '/dashboard';
  static const String chat = '/chat';
  static const String accounts = '/accounts';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case signup:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case dashboard:
        return MaterialPageRoute(builder: (_) => DashboardPage());
      case pharmacy:
        return MaterialPageRoute(builder: (_) => PharmacyPage());
      case chat:
        return MaterialPageRoute(builder: (_) => ChatScreen());
      case accounts:
        return MaterialPageRoute(builder: (_) => AccountsPage());
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
