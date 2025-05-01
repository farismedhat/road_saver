import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'tesla_status_app.dart'; // Import the TeslaStatusPage

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _mapController;

  // Initial map position (San Francisco coordinates as per the image)
  static const LatLng _sanFrancisco = LatLng(37.7749, -122.4194);

  // List of charging stations (mock data)
  final List<Map<String, String>> _chargingStations = [
    {
      'name': 'Rockafella Center, SF, CA 94116',
      'lat': '37.7749',
      'lng': '-122.4194',
    },
    {
      'name': 'Blastix Car Center, SF, CA 94116',
      'lat': '37.7849',
      'lng': '-122.4294',
    },
  ];

  // Set of markers for the map
  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    // Initialize markers for charging stations
    _markers = _chargingStations.map((station) {
      return Marker(
        markerId: MarkerId(station['name']!),
        position: LatLng(
          double.parse(station['lat']!),
          double.parse(station['lng']!),
        ),
        infoWindow: InfoWindow(
          title: station['name'],
          snippet: 'Get Directions',
          onTap: () {
            // Handle "Get Directions" tap (e.g., open Google Maps)
          },
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      );
    }).toSet();
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Map
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: const CameraPosition(
              target: _sanFrancisco,
              zoom: 12,
            ),
            markers: _markers,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
          // Overlay Card for Charging Stations
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Car Info and Icon
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'My Car TESLA 2025',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/car_icon.png',
                          width: 50,
                          errorBuilder: (context, error, stackTrace) =>
                          const Icon(
                            Icons.directions_car,
                            color: Colors.greenAccent,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // Title
                    Row(
                      children: [
                        const Icon(
                          Icons.ev_station,
                          color: Colors.greenAccent,
                          size: 30,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'SUPER CHARGE STATIONS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Search Bar with Auto Detect Button
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'enter a location or city',
                        hintStyle: const TextStyle(color: Colors.white54),
                        filled: true,
                        fillColor: Colors.grey[900],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.gps_fixed,
                            color: Colors.greenAccent,
                          ),
                          onPressed: () {
                            // Navigate to TeslaStatusPage when GPS icon is tapped
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TeslaStatusPage(),
                              ),
                            );
                          },
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 16),
                    // Popular Charging Stations
                    const Text(
                      'Popular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: ListView.builder(
                        itemCount: _chargingStations.length,
                        itemBuilder: (context, index) {
                          final station = _chargingStations[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_pin,
                                  color: Colors.white70,
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    station['name']!,
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "Get Directions" (e.g., open Google Maps)
                                  },
                                  child: const Text(
                                    'Get Directions',
                                    style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }
}