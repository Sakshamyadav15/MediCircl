import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPopup extends StatefulWidget {
  const GoogleMapPopup({super.key});

  @override
  _GoogleMapPopupState createState() => _GoogleMapPopupState();
}

class _GoogleMapPopupState extends State<GoogleMapPopup> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(12.9716, 77.5946); // Bengaluru coordinates

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Details'),
        backgroundColor: Color(0xFF38A3A5),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('Bengaluru'),
            position: _center,
            infoWindow: InfoWindow(
              title: 'Bengaluru',
              snippet: 'Karnataka, India',
            ),
          ),
        },
      ),
    );
  }
}