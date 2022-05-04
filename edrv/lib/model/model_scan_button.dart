import 'package:flutter/material.dart';

import '../view/googlemap/google_map_page.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20.0),
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.3),
          //     spreadRadius: 5,
          //     blurRadius: 7,
          //     offset: Offset(0, 3), // changes position of shadow
          //   ),
          // ],
          ),
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fullscreen_outlined,
              color: Colors.greenAccent,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Scan",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        textColor: Colors.white,
        color: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GoogleMapPage(),
            ),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),
      ),
    );
  }
}
