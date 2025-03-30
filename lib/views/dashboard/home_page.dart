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
            Text('Medicircl', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            _buildAddressBar(context),
          ],
        ),
        backgroundColor: Color(0xFF38A3A5),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search, color: Color(0xFF38A3A5)),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Feature Cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildFeatureCard(
                    context,
                    title: 'Medicinal\nReminder',
                    imageUrl: "assets/images/medicinal_reminder.jpg",
                    onTap: () {
                      // Navigate to Medicinal Reminder page
                    },
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Medical\nReports',
                    imageUrl: "assets/images/medical_reports.jpg",
                    onTap: () {
                      // Navigate to Medical Reports page
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Blood Donation Camp Card
              _buildBloodDonationCard(context),
              SizedBox(height: 16),

              // Emergency Button
              _buildEmergencyButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddressBar(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GoogleMapPopup(),  // Opens Google Maps Screen
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

  Widget _buildFeatureCard(
    BuildContext context, {
    required String title,
    required String imageUrl,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.42,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          border: Border.all(color: Colors.grey.shade200, width: 1),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                imageUrl, 
                width: double.infinity, 
                height: 120, 
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF38A3A5),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBloodDonationCard(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              "assets/images/blood_donation_camp.jpg", 
              width: double.infinity, 
              height: 150, 
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Blood Donation Camp',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
                color: Color(0xFF38A3A5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmergencyButton() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.red.shade200,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Center(
        child: Text(
          'Emergency Blood Request',
          style: TextStyle(
            color: Colors.white, 
            fontSize: 18, 
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
