import 'package:edrv/model/model_appbar.dart';
import 'package:edrv/model/model_drawer.dart';
import 'package:edrv/model/model_scan_button.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Position userLocation;

    // Future<Position> _getLocation() async {
    //   try {
    //     userLocation = await Geolocator.getCurrentPosition(
    //         desiredAccuracy: LocationAccuracy.best);
    //   } catch (e) {
    //     userLocation = null!;
    //   }
    //   return userLocation;
    // }

    return Scaffold(
      drawer: NavigationDrawerWidget(),
      //appBar: AppBarHome(),
      backgroundColor: Colors.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: RawMaterialButton(
        onPressed: () => {},
        //fillColor: Colors.black,
        child: ScanButton(),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Row(
                            children: [menuButton],
                            textDirection: TextDirection.ltr)),
                    Expanded(
                        child: Row(
                            children: [settingButton],
                            textDirection: TextDirection.rtl)),
                  ],
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
