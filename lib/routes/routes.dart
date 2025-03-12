import 'package:flutter/material.dart';
import 'package:medicircle/views/dashboard/pharmacy.dart';
import '../views/auth/sign-up.dart';
import '../views/auth/login.dart';
import '../views/dashboard/dashboard.dart';
import '../views/dashboard/chat_screen.dart'; 

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String dashboard = '/dashboard';
  static const String pharmacy = '/dashboard';
  static const String chat = '/chat'; // Added Chat Route

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
        return MaterialPageRoute(builder: (_) => const ChatScreen()); // Chat Screen
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
