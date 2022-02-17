import 'package:boozimba/app/utils/signIn_signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GoogleMapScreen extends StatefulWidget {
  GoogleMapScreenState createState() => GoogleMapScreenState();
}

class GoogleMapScreenState extends State<GoogleMapScreen> {
  LatLng _initialcameraposition = LatLng(22.643863, 88.426718);
  late GoogleMapController _controller;
  Location _location = Location();

  Set<Marker> customMarkers = {};

  void _onMapCreated(GoogleMapController _cntlr) {
    setState(() {
      customMarkers.add(Marker(
          markerId: MarkerId('id-1'), position: LatLng(22.643863, 88.426718)));
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Container(
    //     height: MediaQuery.of(context).size.height * 1,
    //     width: MediaQuery.of(context).size.width * 1,
    //     child: Stack(
    //       children: [
    //         GoogleMap(
    //           initialCameraPosition:
    //               CameraPosition(target: _initialcameraposition, zoom: 10.0),
    //           mapType: MapType.normal,
    //           onMapCreated: _onMapCreated,
    //           myLocationEnabled: true,
    //           markers: customMarkers.toSet(),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Container(
            height: 30,
            width: 35,
            padding: EdgeInsets.only(left: 5),
            // decoration: BoxDecoration(
            //     border: Border.all(color: Colors.red, width: 5),
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(6),
            //         topRight: Radius.circular(6),
            //         bottomLeft: Radius.circular(6),
            //         bottomRight: Radius.circular(6))
            //         ),
            child: CustomPaint(
              painter: SignBoxPainter(),
              child: Icon(Icons.arrow_back_ios, //This here is the icon
                  color: Colors.red,
                  size: 30),
            ),
          ),
        ),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition:
            CameraPosition(target: LatLng(22.643863, 88.426718), zoom: 15),
        // myLocationEnabled: true,
        markers: customMarkers,
      ),
    );
  }
}
