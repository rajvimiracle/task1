
/*import 'package:flutter/material.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:location/location.dart';

class FetchLocation extends StatefulWidget {
  const FetchLocation({super.key});

  @override
  State<FetchLocation> createState() => _FetchLocationState();
}

class _FetchLocationState extends State<FetchLocation> {
  Location location = Location();
  String address = "";

  bool _serviceEnabled = false;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  initData()async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    location.onLocationChanged.listen((LocationData currentLocation) async {
      _locationData = currentLocation;
      final coordinates = Coordinates(
          _locationData!.latitude, _locationData!.longitude);
      var addresses = await Geocoder.local.findAddressesFromCoordinates(
          coordinates);
      address = addresses.first.toMap().toString();
     setState(() {

     });
      // Use current location
    });
  }
  @override
  void initState() {
   initData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Location"),
      ),
      body: Column(
        children: [
          Text("Latitude : ${_locationData?.latitude}"),
          Text("Latitude : ${_locationData?.longitude}"),
          Text("Latitude : ${address}"),
        ],
      ),
    );
  }
}*/

