import 'package:flutter/material.dart';
// import 'home_page.dart';
import 'blood_bank.dart';
import 'pharmacy.dart';
// import 'accounts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // HomePage(),
    BloodBankPage(),
    BloodBankPage(),
    PharmacyPage(),
    PharmacyPage(),
    // AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// Function to dynamically set the navbar color
  Color _getNavBarColor() {
    return _selectedIndex == 1 ? Colors.red : const Color(0xFF38A3A5); // Blood Bank → Red, Else → Green
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      height: 96,
      color: _getNavBarColor(), // Dynamic navbar color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(icon: Icons.home, label: 'Home', index: 0),
          _buildNavItem(icon: Icons.bloodtype_outlined, label: 'Blood Bank', index: 1),
          _buildNavItem(icon: Icons.local_pharmacy_outlined, label: 'Pharmacy', index: 2),
          _buildNavItem(icon: Icons.person_outline, label: 'Account', index: 3),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.white : Colors.black, // Selected icons turn white for better contrast
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black, // Selected text turns white for visibility
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
