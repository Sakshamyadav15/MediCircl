import 'package:flutter/material.dart';
import '../components/google_maps_api.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          children: [
            Text('Medicircl', style: TextStyle(color: Colors.white)),
            SizedBox(height: 4),
            _buildAddressBar(context),
          ],
        ),
        backgroundColor: Color(0xFF38A3A5),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "assets/images/medicircle_logo.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Divider(color: Color(0xFF38A3A5), thickness: 3),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildFeatureCard('Medicinal Reminder', "assets/images/medicinal_reminder.jpg"),
                      _buildFeatureCard('Medical Reports', "assets/images/medical_reports.jpg"),
                    ],
                  ),
                  SizedBox(height: 16),
                  _buildImageCard('Blood Donation Camp', "assets/images/blood_donation_camp.jpg"),
                  SizedBox(height: 16),
                  _buildEmergencyButton(),
                  SizedBox(height: 16),
                  _buildQuickAccessButtons(context),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedItemColor: Color(0xFF38A3A5),
      ),
    );
  }

  Widget _buildAddressBar(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GoogleMapPopup(),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_on, color: Colors.white, size: 20),
          SizedBox(width: 5),
          Text(
            'Your Address: Bengaluru, Karnataka',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAccessButtons(BuildContext context) {
    return Column(
      children: [
        _buildNavButton(context, 'Blood Bank', Icons.bloodtype, '/bloodbank'),
        _buildNavButton(context, 'Pharmacy', Icons.local_pharmacy, '/pharmacy'),
        _buildNavButton(context, 'Accounts', Icons.account_circle, '/accounts'),
      ],
    );
  }

  Widget _buildNavButton(
    BuildContext context,
    String title,
    IconData icon,
    String route,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF38A3A5),
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        icon: Icon(icon),
        label: Text(title, style: TextStyle(fontSize: 18)),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }

  Widget _buildFeatureCard(String title, String imageUrl) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(imageUrl, width: 150, height: 120, fit: BoxFit.cover),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildImageCard(String title, String imageUrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(imageUrl, width: double.infinity, fit: BoxFit.cover),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildEmergencyButton() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          'Emergency Blood Request',
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}