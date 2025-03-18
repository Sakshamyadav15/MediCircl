import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 852,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 359,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.50, -0.00),
                          end: Alignment(0.50, 1.00),
                          colors: [Color(0xFF38A3A5), Color(0xFF57CC99)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Add passport photo
                  Positioned(
                    left: 33,
                    top: 108,
                    child: _buildPassportPhoto(),
                  ),
                  // Increased spacing between photo and details
                  Positioned(
                    left: 215, // Increased from 170 to add more space
                    top: 108,
                    child: _buildUserInfoSection(),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 112, // Centered
                    top: 35,
                    child: SizedBox(
                      width: 225,
                      height: 57,
                      child: Text(
                        'MediCircle',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                          letterSpacing: -0.36,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 33,
                    top: 379,
                    child: Text(
                      'Your Email',
                      style: TextStyle(
                        color: Color(0xFF262422),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.20,
                        letterSpacing: 0.03,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 33,
                    top: 408,
                    child: _buildInfoField('xxx@gmail.com', Icons.email),
                  ),
                  Positioned(
                    left: 33,
                    top: 474,
                    child: _buildPhoneNumberSection(),
                  ),
                  Positioned(
                    left: 33,
                    top: 569,
                    child: _buildBloodDonationButton(),
                  ),
                  Positioned(
                    left: 33,
                    top: 635,
                    child: _buildSettingsButton(' App Settings & Preferences', Icons.settings),
                  ),
                  Positioned(
                    left: 33,
                    top: 701,
                    child: _buildSettingsButton('MedAI Data & Preferences', Icons.data_usage),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPassportPhoto() {
    return Container(
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          '../../../assets/images/passport_photo.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildUserInfoSection() {
    return SizedBox(
      height: 215,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoItem('Name', 'Lily Potter', 15),
          const SizedBox(height: 11),
          _buildInfoItem('Gender', 'Female', 12),
          const SizedBox(height: 11),
          _buildInfoItem('Date of Birth', 'August 27th, 1999', 12),
          const SizedBox(height: 11),
          _buildInfoItem('Blood Group', 'B+', 12),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, String value, double valueSize) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.50,
            child: Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.12,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: valueSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoField(String text, IconData icon) {
    return Container(
      width: 327,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1ECEC)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Color(0xFFABABAB), size: 24),
          const SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFFABABAB),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 1.20,
              letterSpacing: 0.03,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneNumberSection() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Phone Number',
            style: TextStyle(
              color: Color(0xFF262422),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 1.20,
              letterSpacing: 0.03,
            ),
          ),
          const SizedBox(height: 12),
          _buildInfoField('+912123135', Icons.phone),
        ],
      ),
    );
  }

  Widget _buildBloodDonationButton() {
    return Container(
      width: 327,
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFC13C3C)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.bloodtype, color: Color(0xFFC13C3C), size: 24),
          const SizedBox(width: 12),
          SizedBox(
            width: 220,
            child: Text(
              'Blood Donation History',
              style: TextStyle(
                color: Color(0xFFC13C3C),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 1.20,
                letterSpacing: 0.03,
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 33,
            height: 33,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0x00B04747),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Icon(Icons.arrow_forward_ios, color: Color(0xFFC13C3C), size: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsButton(String text, IconData icon) {
    return Container(
      width: 327,
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1ECEC)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Color(0xFFABABAB), size: 24),
          const SizedBox(width: 12),
          SizedBox(
            width: 222,
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xFFABABAB),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 1.20,
                letterSpacing: 0.03,
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios, color: Color(0xFFABABAB), size: 18),
        ],
      ),
    );
  }
}