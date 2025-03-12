import 'package:flutter/material.dart';

class PharmacyPage extends StatefulWidget {
  const PharmacyPage({super.key});
  @override
  State<PharmacyPage> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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
                    _buildCarousel(context),
                    const SizedBox(height: 24),
                    _buildPharmacyCard(context),
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
            child: const Icon(
              Icons.location_on_outlined,
              size: 20,
              color: Color(0xFF666666),
            ),
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

  Widget _buildCarousel(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity, // Makes the card take full width
          height:
              MediaQuery.sizeOf(context).height * 0.2, // 20% of screen height
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: NetworkImage("../../../assets/images/meds_pills.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
            ),
          ),
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
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
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.005),
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
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * 0.03,
                    vertical: MediaQuery.sizeOf(context).height * 0.01,
                  ),
                  minimumSize: Size(
                    MediaQuery.sizeOf(context).width *
                        0.35, // 35% of screen width
                    MediaQuery.sizeOf(context).height *
                        0.05, // 5% of screen height
                  ),
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
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.01,
        ), // Responsive spacing
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

  Widget _buildPharmacyCard(BuildContext context) {
    return Container(
      width: double.infinity, // Takes full width
      height: MediaQuery.sizeOf(context).height * 0.2, // 20% of screen height
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage("../../../assets/images/pharmacy_shop.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
        ),
      ),
      padding: EdgeInsets.all(
        MediaQuery.sizeOf(context).width * 0.04,
      ), // Responsive padding
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
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.03,
                vertical: MediaQuery.sizeOf(context).height * 0.01,
              ),
              minimumSize: Size(
                MediaQuery.sizeOf(context).width * 0.35, // 35% of screen width
                MediaQuery.sizeOf(context).height * 0.05, // 5% of screen height
              ),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
          ),
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
          image: AssetImage('assets/images/discount_image.jpg'),
          backgroundColor: const Color(0x7FDADADA),
        ),
        _buildQuickAccessItem(
          title: 'Set Medi Reminders',
          image: AssetImage('assets/images/bell_image.webp'),
        ),
      ],
    );
  }

  Widget _buildQuickAccessItem({
    required String title,
    IconData? icon,
    AssetImage? image,
    Color backgroundColor = Colors.transparent,
  }) {
    return Container(
      // Your container styling
      child: Column(
        children: [
          image != null
              ? Image(
                image: image,
                width: 24, // Adjust size as needed
                height: 24, // Adjust size as needed
              )
              : Icon(icon),
          Text(title),
        ],
      ),
    );
  }

  Widget _buildFloatingButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/chat');
        },
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
      ),
    );
  }
}
