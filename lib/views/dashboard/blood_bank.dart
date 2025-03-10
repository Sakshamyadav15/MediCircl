import 'package:flutter/material.dart';

class BloodBankPage extends StatelessWidget {
  static const IconData dropFill = IconData(
    0xf8d9,
    fontFamily: 'CupertinoIcons',
    fontPackage: 'cupertino_icons',
  );

  const BloodBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFFE4E4),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTopSection(),
                _buildDonationStatus(),
                _buildUrgentRequestsBanner(),
                _buildFindDonorsCard(context),
                _buildBloodTypeSection(),
                _buildRegisterAsDonorBanner(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopSection() {
    return Container(
      color: const Color(0x66DA7B7B),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.location_on, size: 24),
              const SizedBox(width: 12),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Your Address:',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' Bengaluru, Karnataka',
                      style: TextStyle(
                        color: Color(0xFF2B2B2B),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE6E6E6)),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Color(0xFF999999)),
                const SizedBox(width: 12),
                const Text(
                  'Search for Blood',
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDonationStatus() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      alignment: Alignment.centerLeft,
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Donate Blood :',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: ' Off',
              style: TextStyle(
                color: Color(0xFFE41E1E),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUrgentRequestsBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 31, vertical: 10),
      padding: const EdgeInsets.all(16),
      height: 95,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Urgent Blood Requests\nNear You',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Your Donation can Save Lives',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Icon(dropFill, size: 50, color: Colors.red.shade700),
        ],
      ),
    );
  }

  Widget _buildFindDonorsCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 31, vertical: 10),
      height: 130,
      width: MediaQuery.of(context).size.width, // Make it full width
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage('assets/images/blood_bank.jpeg'),
          fit: BoxFit.cover,
          opacity: 0.4,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Find Active Blood Donors Nearby',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            width: 124,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xFFE6E6E6)),
            ),
            child: const Text(
              'Bengaluru',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF2B2B2B),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBloodTypeSection() {
    final bloodTypes = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 15, bottom: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Find a Blood Type Donor',
              style: TextStyle(
                color: Color(0xFF2B2B2B),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 30),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: bloodTypes.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: const Color(0xFFDA8E8E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Single Blood Drop icon background
                  Opacity(
                    opacity: 0.7,
                    child: Icon(dropFill, size: 70, color: Colors.red.shade900),
                  ),
                  // Blood Type text
                  Text(
                    bloodTypes[index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildRegisterAsDonorBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 31, vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      height: 67,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(dropFill, size: 30, color: Colors.red.shade800),
          const SizedBox(width: 15),
          const Text(
            'Register Yourself as a Donor',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
