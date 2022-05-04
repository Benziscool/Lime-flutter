import 'package:edrv/view/menu/favourites_page.dart';

import 'package:flutter/material.dart';

import '../view/menu/payment/payment_page.dart';

Widget buildMenuItem(
    {
     String text,
     IconData icon,
     VoidCallback onClicked}) {
  final color = Colors.grey;
  final hoverColor = Colors.white70;
  double tsize = 15;

  return Padding(
    padding: const EdgeInsets.only(left: 5,right: 15,bottom: 25),
    child: InkWell(
      onTap: onClicked,
      hoverColor: hoverColor,
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black54, fontSize: tsize),
          ),
        ],
      ),
    ),
  );
  // ListTile(
  //   leading: Icon(
  //     icon,
  //     color: color,
  //   ),
  //   title: Text(
  //     text,
  //     style: TextStyle(color: Colors.black54),
  //   ),
  //   hoverColor: hoverColor,
  //   onTap: onClicked,
  // );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PaymentPage(),
        ),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HistoryPage(),
        ),
      );
      break;
  }
}
