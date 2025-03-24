// File: lib/pages/home_page.dart
import 'package:flutter/material.dart';
import '../components/google_maps_api.dart';

class HomePage extends StatelessWidget {
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to Medicircl',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF38A3A5),
              ),
            ),
            SizedBox(height: 20),
            _buildNavButton(
              context,
              'Blood Bank',
              Icons.bloodtype,
              '/bloodbank',
            ),
            _buildNavButton(
              context,
              'Pharmacy',
              Icons.local_pharmacy,
              '/pharmacy',
            ),
            _buildNavButton(
              context,
              'Accounts',
              Icons.account_circle,
              '/accounts',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressBar(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the Google Maps page when the location is tapped
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
}