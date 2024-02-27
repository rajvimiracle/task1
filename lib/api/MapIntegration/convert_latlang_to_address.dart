import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';

class ConvertLatLangToAddress extends StatefulWidget {
  const ConvertLatLangToAddress({super.key});

  @override
  State<ConvertLatLangToAddress> createState() => _ConvertLatLangToAddressState();
}

class _ConvertLatLangToAddressState extends State<ConvertLatLangToAddress> {
  String stAddress = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(stAddress),
          GestureDetector(
            onTap: () async {
            /*  List<Location> locations = await locationFromAddress("Gronausestraat 710, Enschede");*/
             /* final query = "1600 Amphiteatre Parkway, Mountain View";
              var addresses = await Geocoder.local.findAddressesFromQuery(query);
              var second = addresses.first;
              print("${second.featureName} : ${second.coordinates}");
              final coordinates = new Coordinates(22.309425, 72.136230);
              var address = await  Geocoder.local.findAddressesFromCoordinates(coordinates);
              var first = addresses.first;*/
            /*  setState(() {
                stAddress= locations.last.longtitue
               *//* stAddress = first.addressLine.toString();*//*
              });*/
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Center(
                child: Text('Convert'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
