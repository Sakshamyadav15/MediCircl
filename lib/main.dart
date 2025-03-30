import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// Remove Do not restrict kwy in API So that it wont show 
// Also making that could cause fee


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/.env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MediCircleApp());
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
