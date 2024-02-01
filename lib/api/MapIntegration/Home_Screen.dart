import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(22.309425, 72.136230),
    zoom: 14.4746,
  );

  List<Marker> _marker = [];
  final List<Marker> _list = const [
    Marker(markerId: MarkerId('1'),
      position: LatLng(22.309425, 72.136230),
      infoWindow: InfoWindow(
        title: 'My Current Location',
      ),
    ),
    Marker(markerId: MarkerId('2'),
      position: LatLng(21.170240, 72.831062),
      infoWindow: InfoWindow(
        title: 'Surat',
      ),
    ),
    Marker(markerId: MarkerId('3'),
      position: LatLng(19.076090, 72.877426),
      infoWindow: InfoWindow(
        title: 'Mumbai',
      ),
    ),
    Marker(markerId: MarkerId('4'),
      position: LatLng(35.652832, 139.839478),
      infoWindow: InfoWindow(
        title: 'Japan',
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _kGooglePlex,

          mapType: MapType.normal,
          compassEnabled: false,
          myLocationEnabled: false,
          markers: Set<Marker>.of(_marker),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(target: LatLng(22.309425, 72.136230),
              zoom: 14,
            ),
          ));
          setState(() {});
        },
        child: Icon(Icons.location_disabled_outlined,
        ),
      ),
    );
  }
}
