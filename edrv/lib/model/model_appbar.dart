import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar AppBarHome() {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Builder(
        builder: ((context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
      ));
}

var menuButton = Center(
  child: CircleAvatar(
      backgroundColor: Colors.white,
      radius: 15,
      child: Builder(
        builder: ((context) {
          return IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.perm_identity,
              color: Colors.black,
              size: 18,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
      )),
);

var settingButton = Center(
  child: CircleAvatar(
    backgroundColor: Colors.white,
    radius: 15,
    child: Builder(
      builder: ((context) {
        return IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.short_text_rounded,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {},
        );
      }),
    ),
  ),
);

var closeButton = Center(
    child: Container(
  decoration: BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(blurRadius: 2.5, color: Colors.grey[400], spreadRadius: 3)
    ],
  ),
  child: CircleAvatar(
      backgroundColor: Colors.white,
      radius: 15,
      child: Builder(
        builder: ((context) {
          return IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.close_outlined,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          );
        }),
      )),
));
