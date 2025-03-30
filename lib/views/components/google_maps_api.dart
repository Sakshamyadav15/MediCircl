import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPopup extends StatefulWidget {
  @override
  _GoogleMapPopupState createState() => _GoogleMapPopupState();
}

class _GoogleMapPopupState extends State<GoogleMapPopup> {
  late GoogleMapController _mapController;

  final LatLng _initialLocation = LatLng(12.9716, 77.5946); // Bengaluru

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Location"),
        backgroundColor: Color(0xFF38A3A5),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _initialLocation,
          zoom: 14.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId("selected-location"),
            position: _initialLocation,
          ),
        },
      ),
    );
  }
}
