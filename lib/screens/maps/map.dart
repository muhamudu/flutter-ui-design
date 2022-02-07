// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
// import 'package:shop_app/screens/maps/components/body.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import '../../enums.dart';

// class MapScreen extends StatelessWidget {
//   Completer<GoogleMapController> _controller = Completer();
//   static String routeName = "/map";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: <Widget>[
//         _googlemap(context),
//       ]),
//       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.map),
//     );
//   }

//   Widget _googlemap(BuildContext context) {
//     return Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: GoogleMap(
//           mapType: MapType.normal,
//           initialCameraPosition:
//               CameraPosition(target: LatLng(29.917652, -1.865506), zoom: 5),
//           // -1.94371 29.88058,Rwanda Coordinate
//           onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);
//           },
//           markers: {
//             liveClean,
//             // rivieraCleaning,
//           },
//         ));
//   }
// }

// Marker liveClean = Marker(
//   markerId: MarkerId("liveclean"),
//   position: LatLng(29.917652, -1.865506),
//   infoWindow: InfoWindow(title: "Kacyiru, Kigali, Rwanda"),
//   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
// );
// // Marker rivieraCleaning = Marker(
// //   markerId: MarkerId("reviera"),
// //   position: LatLng(30.10184164908862, -1.9702920906689856),
// //   infoWindow: InfoWindow(title: "Reviera Cleaning"),
// //   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
// // );
import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/json/product.dart';
import 'package:shop_app/screens/cart/components/body.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/screens/maps/components/body.dart';
import '../../constants.dart';
import '../../enums.dart';
import '../../size_config.dart';

class MapScreen extends StatefulWidget {
  static String routeName = "/map";
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: MapSample(),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.map));
  }
}

//   Widget getBody() {
//     return SafeArea(
//       child: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             child: Row(
//               children: [
//                 Flexible(
//                     child: Container(
//                   height: 45,
//                   decoration: BoxDecoration(
//                       color: grey.withOpacity(0.2),
//                       borderRadius: BorderRadius.circular(30)),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: TextField(
//                       cursorColor: primary,
//                       decoration: InputDecoration(
//                           border: InputBorder.none,
//                           suffixIcon: Icon(
//                             Icons.search,
//                             size: 20,
//                           ),
//                           hintText: "Search"),
//                     ),
//                   ),
//                 )),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   height: 45,
//                   width: 45,
//                   decoration:
//                       BoxDecoration(color: black, shape: BoxShape.circle),
//                   child: Center(
//                     child: Icon(
//                       Icons.location_on_outlined,
//                       color: white,
//                       size: 20,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           Divider(color: grey.withOpacity(0.8)),
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             child: Text(
//               "All stores",
//               style: TextStyle(fontSize: 22, color: black),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Column(
//               children: List.generate(storeList.length, (index) {
//             return Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
//               child: Container(
//                 height: 200,
//                 width: double.infinity,
//                 child: Stack(
//                   children: [
//                     Container(
//                       height: 200,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: NetworkImage(storeList[index]['img']),
//                               fit: BoxFit.cover),
//                           borderRadius: BorderRadius.circular(10)),
//                     ),
//                     Container(
//                       height: 200,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           color: black.withOpacity(0.35),
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(20),
//                             child: Align(
//                               alignment: Alignment.topRight,
//                               child: Container(
//                                 width: 65,
//                                 height: 25,
//                                 decoration: BoxDecoration(
//                                     color: white,
//                                     borderRadius: BorderRadius.circular(5)),
//                                 child: storeList[index]['open'] == 0
//                                     ? Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceEvenly,
//                                         children: [
//                                           Text(
//                                             "CLOSE",
//                                             style: TextStyle(
//                                                 fontSize: 10,
//                                                 color: black,
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                           Container(
//                                             width: 8,
//                                             height: 8,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.redAccent,
//                                                 shape: BoxShape.circle),
//                                           )
//                                         ],
//                                       )
//                                     : Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceEvenly,
//                                         children: [
//                                           Text(
//                                             "OPEN",
//                                             style: TextStyle(
//                                                 fontSize: 10,
//                                                 color: black,
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                           Container(
//                                             width: 8,
//                                             height: 8,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.green,
//                                                 shape: BoxShape.circle),
//                                           )
//                                         ],
//                                       ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(20.0),
//                             child: Row(
//                               children: [
//                                 Icon(Icons.location_on_outlined,
//                                     size: 20, color: white),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Text(
//                                   storeList[index]['name'],
//                                   style: TextStyle(fontSize: 18, color: white),
//                                 )
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }))
//         ],
//       ),
//     );
//   }
// }
