
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearbyMap extends StatefulWidget {
  const NearbyMap({super.key});

  @override
  State<NearbyMap> createState() => _NearbyMapState();
}

class _NearbyMapState extends State<NearbyMap> {
  GoogleMapController? mapController;

  final LatLng _center = const LatLng(-5.088604834802086, -42.810859711757594);

  Set<Marker> _marcadores = {};

  void _carregaMarcadores() async {
    Set<Marker> marcadoresLocal = {};
    Marker marcadorIfpi = Marker(
      infoWindow: InfoWindow(title: 'IFPI', snippet: 'Campus Teresina Central'),
      markerId: MarkerId('IFPI - CAMPUS TERESINA CENTRAL'),
      position: LatLng(-5.088604834802086, -42.810859711757594),
    );
    Marker marcadorIfpiSul = Marker(
      infoWindow: InfoWindow(title: 'IFPI', snippet: 'Campus Teresina Sul'),
      markerId: MarkerId('IFPI - CAMPUS TERESINA SUL'),
      position: LatLng(-5.1020766, -42.8129776),
    );
    Marker marcadorIfpiReitoria = Marker(
      infoWindow: InfoWindow(title: 'IFPI', snippet: 'Reitoria'),
      markerId: MarkerId('IFPI - REITORIA'),
      position: LatLng(-5.07623, -42.7519506),
    );
    marcadoresLocal.add(marcadorIfpi);
    marcadoresLocal.add(marcadorIfpiSul);
    marcadoresLocal.add(marcadorIfpiReitoria);
    setState(() {
      _marcadores = marcadoresLocal;
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    _carregaMarcadores();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nearby')),
      body: GoogleMap(
        myLocationEnabled: true,
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(target: _center, zoom: 10.0),
        markers: _marcadores,
      ),
    );
  }
}
