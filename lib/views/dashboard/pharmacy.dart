import 'package:flutter/material.dart';

class MedicalAppHomeScreen extends StatelessWidget {
  const MedicalAppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildLocationHeader(),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    _buildSearchBar(),
                    const SizedBox(height: 24),
                    _buildCarousel(),
                    const SizedBox(height: 24),
                    _buildPharmacyCard(),
                    const SizedBox(height: 24),
                    _buildPrescriptionCard(),
                    const SizedBox(height: 24),
                    _buildQuickAccessSection(),
                    const SizedBox(height: 24),
                    _buildFloatingButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildLocationHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 16),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
            ),
            child: const Icon(Icons.location_on_outlined, size: 20, color: Color(0xFF666666)),
          ),
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
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 48,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE6E6E6)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          const Icon(Icons.search, color: Color(0xFF999999), size: 24),
          const SizedBox(width: 12),
          const Text(
            'Search meds or article here',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Stack(
            alignment: Alignment.topRight,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.notifications_none, color: Color(0xFF666666)),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xFF38A3A5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  '+9',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget _buildCarousel() {
    return Column(
      children: [
        Container(
          height: 130,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: NetworkImage("https://placehold.co/328x130/38A3A5/FFFFFF"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black38,
                BlendMode.darken,
              ),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Track your meds!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Add up to 5 patients for free',
                    style: TextStyle(
                      color: Color(0xFFF2F2F2),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF2B2B2B),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  minimumSize: const Size(124, 36),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE6E6E6)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  'See Details',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF9C034),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE6E6E6),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE6E6E6),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPharmacyCard() {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: NetworkImage("https://placehold.co/328x130/2B2B2B/FFFFFF"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black38,
            BlendMode.darken,
          ),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Find Your Nearby Pharmacy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF2B2B2B),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              minimumSize: const Size(124, 36),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFE6E6E6)),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: const Text(
              'Bengaluru',
              style: TextStyle(
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

  Widget _buildPrescriptionCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xFFFEF7E6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0F101828),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: -2,
          ),
          BoxShadow(
            color: Color(0x19101828),
            blurRadius: 8,
            offset: Offset(0, 4),
            spreadRadius: -2,
          )
        ],
      ),
      child: Row(
        children: [
          const Icon(
            Icons.description_outlined,
            size: 24,
            color: Color(0xFF2B2B2B),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Have prescription?',
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Upload and find your medicine in one tap!',
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Color(0xFF2B2B2B),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAccessSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildQuickAccessItem(
          title: 'Find Discounts',
          icon: Icons.discount_outlined,
          backgroundColor: const Color(0x7FDADADA),
        ),
        _buildQuickAccessItem(
          title: 'Set Medi Reminders',
          icon: Icons.access_time,
          imageUrl: "https://placehold.co/80x80",
        ),
      ],
    );
  }

  Widget _buildQuickAccessItem({
    required String title,
    required IconData icon,
    Color backgroundColor = Colors.transparent,
    String? imageUrl,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF2B2B2B),
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 131,
          height: 109,
          decoration: ShapeDecoration(
            color: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: imageUrl != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.network(
                    imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                )
              : Icon(
                  icon,
                  size: 48,
                  color: const Color(0xFF2B2B2B),
                ),
        ),
      ],
    );
  }

  Widget _buildFloatingButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 71,
        height: 68,
        decoration: ShapeDecoration(
          color: const Color(0x2657CC99),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: const Icon(
          Icons.chat_outlined,
          size: 40,
          color: Color(0xFF38A3A5),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      height: 96,
      color: const Color(0x7C57CC99),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(icon: Icons.home, label: 'Home', isSelected: true),
          _buildNavItem(icon: Icons.bloodtype_outlined, label: 'Blood Bank'),
          _buildNavItem(icon: Icons.local_pharmacy_outlined, label: 'Pharmacy'),
          _buildNavItem(icon: Icons.person_outline, label: 'Account'),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    bool isSelected = false,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isSelected ? const Color(0xFF38A3A5) : Colors.black,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? const Color(0xFF38A3A5) : Colors.black,
            fontSize: 12,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}