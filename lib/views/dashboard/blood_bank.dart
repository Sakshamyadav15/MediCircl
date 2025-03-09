import 'package:flutter/material.dart';

class BloodBankPage extends StatelessWidget {
  // Blood drop icon definition
  static const IconData dropFill = IconData(
    0xf8d9,
    fontFamily: 'CupertinoIcons',
    fontPackage: 'cupertino_icons',
  );

  const BloodBankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFFE4E4),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Top address and search section
                _buildTopSection(),
                
                // Donation status
                _buildDonationStatus(),
                
                // Urgent requests banner
                _buildUrgentRequestsBanner(),
                
                // Find active donors card
                _buildFindDonorsCard(),
                
                // Find a blood type section
                _buildBloodTypeSection(),
                
                // Register as donor banner
                _buildRegisterAsDonorBanner(),
                
                const SizedBox(height: 20),
                
                // Bottom navigation
                _buildBottomNavigation(),
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
      height: 87,
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
          Icon(
            dropFill,
            size: 50,
            color: Colors.red.shade700,
          ),
        ],
      ),
    );
  }

  Widget _buildFindDonorsCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 31, vertical: 10),
      height: 130,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: NetworkImage('https://via.placeholder.com/328x130'),
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
    final bloodTypes = [
      'A+', 'A-', 'B+', 'B-',
      'O+', 'O-', 'AB+', 'AB-',
    ];

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
            return Stack(
              children: [
                // Background blood symbols
                Positioned.fill(
                  child: CustomPaint(
                    painter: BloodSymbolPainter(
                      color: Colors.red.withOpacity(0.15),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFDA8E8E),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      bloodTypes[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
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
          Icon(
            dropFill,
            size: 30,
            color: Colors.red.shade800,
          ),
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

  Widget _buildBottomNavigation() {
    return Container(
      height: 96,
      color: const Color(0x7CCC6057),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem('Home'),
          _buildNavItem('Blood Bank', isActive: true),
          _buildNavItem('Pharmacy'),
          _buildNavItem('Account'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, {bool isActive = false}) {
    IconData icon;
    switch (label) {
      case 'Home':
        icon = Icons.home;
        break;
      case 'Blood Bank':
        icon = dropFill;
        break;
      case 'Pharmacy':
        icon = Icons.local_pharmacy;
        break;
      case 'Account':
        icon = Icons.person;
        break;
      default:
        icon = Icons.circle;
    }

    return Container(
      decoration: isActive
          ? BoxDecoration(
              color: const Color(0x2DBF0F12),
              borderRadius: BorderRadius.circular(4),
            )
          : null,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isActive ? Colors.red.shade900 : Colors.black87),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

// Custom painter for drawing blood drop symbols in the background
class BloodSymbolPainter extends CustomPainter {
  final Color color;

  BloodSymbolPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final dropPath = Path();
    
    // Draw main drop in center
    _drawBloodDrop(
      canvas, 
      paint, 
      centerX: size.width / 2, 
      centerY: size.height / 2,
      size: size.width * 0.5
    );
    
    // Draw smaller drops in corners
    _drawBloodDrop(
      canvas, 
      paint, 
      centerX: size.width * 0.25, 
      centerY: size.height * 0.25,
      size: size.width * 0.25
    );
    
    _drawBloodDrop(
      canvas, 
      paint, 
      centerX: size.width * 0.75, 
      centerY: size.height * 0.25,
      size: size.width * 0.25
    );
    
    _drawBloodDrop(
      canvas, 
      paint, 
      centerX: size.width * 0.25, 
      centerY: size.height * 0.75,
      size: size.width * 0.25
    );
    
    _drawBloodDrop(
      canvas, 
      paint, 
      centerX: size.width * 0.75, 
      centerY: size.height * 0.75,
      size: size.width * 0.25
    );
  }
  
  void _drawBloodDrop(Canvas canvas, Paint paint, {
    required double centerX, 
    required double centerY,
    required double size
  }) {
    final path = Path();
    
    // Starting point at the top of the drop
    path.moveTo(centerX, centerY - size * 0.5);
    
    // Draw the teardrop shape
    path.cubicTo(
      centerX + size * 0.4, centerY - size * 0.3,  // control point 1
      centerX + size * 0.4, centerY + size * 0.3,  // control point 2
      centerX, centerY + size * 0.4                // end point
    );
    
    path.cubicTo(
      centerX - size * 0.4, centerY + size * 0.3,  // control point 1
      centerX - size * 0.4, centerY - size * 0.3,  // control point 2
      centerX, centerY - size * 0.5                // end point (back to start)
    );
    
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}