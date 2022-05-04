import 'package:edrv/model/model_build_menu_item.dart';
import 'package:edrv/model/model_menu_header.dart';
import 'package:flutter/material.dart';

import '../view/welcome/welcome_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = 'Test User';
    final email = 'TestUser@gmail.com';
    final urlImage = 'images/food2.jpg';
    final padding =
        EdgeInsets.all(16.0); //EdgeInsets.symmetric(horizontal: 20);
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: padding,
          children: <Widget>[
            buildHeader(
              name: name,
              email: email,
            ),
            //เส้นขีด
            // Divider(
            //   color: Colors.grey[400],
            // ),
            buildMenuItem(
                text: 'Payment',
                icon: Icons.payment_outlined,
                onClicked: () => selectedItem(context, 0)),
            buildMenuItem(
                text: 'History',
                icon: Icons.history,
                onClicked: () => selectedItem(context, 1)),
            buildMenuItem(
                text: 'Promos',
                icon: Icons.workspace_premium_outlined,
                onClicked: () => selectedItem(context, 2)),
            buildMenuItem(
                text: 'Safety Center',
                icon: Icons.update,
                onClicked: () => selectedItem(context, 3)),
            buildMenuItem(
                text: 'Help',
                icon: Icons.help,
                onClicked: () => selectedItem(context, 4)),
            buildMenuItem(
                text: 'Settings',
                icon: Icons.settings,
                onClicked: () => selectedItem(context, 5)),
            buildMenuItem(
              text: 'Log out',
              icon: Icons.logout_outlined,
              onClicked: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WelcomePage(),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Edrv v1.0.0',
              style: TextStyle(color: Colors.grey, fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}
