/*
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

*/

/*
class SimpleMap extends StatefulWidget {
  @override
  _SimpleMapState createState() =&gt; _SimpleMapState();
}

class _SimpleMapState extends State&lt;SimpleMap&gt; {
static final LatLng _kMapCenter =
LatLng(19.018255973653343, 72.84793849278007);

static final CameraPosition _kInitialPosition =
CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Google Maps Demo'),
),
body: GoogleMap(
initialCameraPosition: _kInitialPosition,
),
);
}
}*/
/*import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      markers.add(Marker(
        markerId: MarkerId('marker1'),
        position: LatLng(37.7749, -122.4194),
        infoWindow: InfoWindow(title: 'San Francisco'),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Google Maps in Flutter')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194), // San Francisco coordinates
          zoom: 12,
        ),
      ),
    );
  }
}*/
/*
class _MapScreenState extends State<MapScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Google Maps in Flutter')),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12,
        ),
        markers: markers,
      ),
    );
  }
}*/
