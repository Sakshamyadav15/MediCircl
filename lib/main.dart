import 'package:flutter/material.dart';
import './views/auth/sign-up.dart';
void main() {
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
        primaryColor: Color(0xFF38A3A5),
        fontFamily: 'Inter',
      ),
      home: SignUpScreen(),
    );
  }
}


  