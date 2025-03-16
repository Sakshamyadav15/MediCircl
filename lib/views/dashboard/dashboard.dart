import 'package:flutter/material.dart';
import 'accounts.dart';
import 'blood_bank.dart';
import 'pharmacy.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // HomePage(),
    Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    BloodBankPage(),
    PharmacyPage(),
    AccountsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getNavBarColor() {
    return _selectedIndex == 1 ? Colors.red : const Color(0xFF38A3A5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(bottom: 20, right: 20, child: _buildFloatingButton()),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildFloatingButton() {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF38A3A5), Color(0xFF57CC99)], 
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4), 
          ),
        ],
      ),
      child: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/chat'),
        backgroundColor: Colors.transparent, 
        elevation: 0, 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: const Icon(
          Icons.chat_outlined,
          size: 36,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      backgroundColor: _getNavBarColor(),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.bloodtype_outlined),
          label: 'Blood Bank',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_pharmacy_outlined),
          label: 'Pharmacy',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Account',
        ),
      ],
    );
  }
}
