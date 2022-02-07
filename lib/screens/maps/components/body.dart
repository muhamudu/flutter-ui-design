import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import '../../../../size_config.dart';

// API KEY
// AIzaSyCh5wf7YjotNAlibl2IE5tXjRVIOC_aWos
// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             // SizedBox(height: getProportionateScreenHeight(20)),
//             // HomeHeader(),
//             SizedBox(height: getProportionateScreenWidth(10)),
//             MapSample(),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.10184164911862, -1.9702920906658856),
    zoom: 5,
    //LiveClean Rwanda -1.9702920906658856, 30.10184164911862
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(30.10184164911862, -1.9702920906658856),
      tilt: 59.440717697143555,
      zoom: 20);
  // -1.99093254212758, 30.006832864845858 //RwandaCordinate

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: Text('View'),
      //   backgroundColor: Colors.orange.shade600,
      //   icon: Icon(Icons.directions_boat),
      // ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
