import 'package:edrv/model/model_appbar.dart';
import 'package:edrv/model/model_scan_button.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({Key key}) : super(key: key);

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  @override
  Widget build(BuildContext context) {
    Position userLocation;
    GoogleMapController mapController;

    void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
    }

    Future<Position> _getLocation() async {
      try {
        userLocation = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best);
      } catch (e) {
        userLocation = null;
      }
      return userLocation;
    }

    return Scaffold(
      //drawer: NavigationDrawerWidget(),
      // appBar: AppBarHome(),
      // backgroundColor: Colors.black,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: RawMaterialButton(
      //   onPressed: () => {},
      //   //fillColor: Colors.black,
      //   child: ScanButton(),
      // ),
      body: FutureBuilder(
        future: _getLocation(),
        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData==true) {
            return GoogleMap(
              mapType: MapType.normal,
              myLocationEnabled: true,
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                  target: LatLng(userLocation.latitude, userLocation.longitude),
                  zoom: 15),
            );
            //Text('${userLocation.latitude},${userLocation.longitude}');
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
