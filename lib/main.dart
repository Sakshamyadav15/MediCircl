import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
   
  await dotenv.load(fileName: "assets/.env"); 
  String apiKey = dotenv.env['GEMINI_API_KEY'] ?? '';

  print("API Key: $apiKey");

  runApp(MediCircleApp()); 
   
}

class MediCircleApp extends StatelessWidget {
  const MediCircleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediCircle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF38A3A5),
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF38A3A5),
          secondary: const Color(0xFF57CC99),
        ),
        fontFamily: 'Inter',
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: AppRoutes.login, // Set initial screen
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
