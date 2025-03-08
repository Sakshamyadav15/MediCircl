// ignore: file_names
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375,
        height: 812,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            // Bottom home indicator bar
            Positioned(
              left: 0,
              top: 778,
              child: Container(
                width: 375,
                height: 34,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 134,
                      height: 5,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Doctor illustration
            Positioned(
              left: 87.5, // Centered
              top: 150,
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  '../../../assets/images/doctor_illustration.png',
                  fit: BoxFit.contain,
                ),
                // If you don't have the image yet, you can use a placeholder:
                // child: Icon(Icons.medical_services, size: 120, color: Color(0xFF38A3A5)),
              ),
            ),
            
            // Main form content
            Positioned(
              left: 4,
              top: 450,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Form title and description
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Create an account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF38A3A5),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Enter your email to sign up for this app',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF57CC99),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    
                    // Email input and continue button
                    Container(
                      width: 327,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 295,
                                  child: Text(
                                    'email@domain.com',
                                    style: TextStyle(
                                      color: Color(0xFF828282),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: double.infinity,
                            height: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                              color: Color(0xFF57CC99),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Continue',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 1.40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    
                    // Divider with "or"
                    Container(
                      width: 327,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              decoration: BoxDecoration(color: Color(0xFFE6E6E6)),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'or',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.40,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              height: 1,
                              decoration: BoxDecoration(color: Color(0xFFE6E6E6)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    
                    // Google sign-in button
                    Container(
                      width: 327,
                      height: 40,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: 327,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: Color(0xFFEEEEEE),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Google logo
                                    Image.asset(
                                      'assets/images/google_logo.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Continue with Google',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 1.40,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    
                    // Terms and policy text
                    SizedBox(
                      width: 327,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'By clicking continue, you agree to our ',
                              style: TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Status bar
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 375,
                height: 44,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            
            // App title
            Positioned(
              left: 136,
              top: 40,
              child: Text(
                'MediCircle',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF38A3A5),
                  fontSize: 32,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 1.50,
                  letterSpacing: -0.32,
                ),
              ),
            ),
            
            // App logo
            Positioned(
              left: 89,
              top: 50,
              child: Container(
                width: 34,
                height: 32.21,
                child: Image.asset(
                  'assets/images/medicircle_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}