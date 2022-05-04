import 'package:edrv/view/home_page.dart';
import 'package:edrv/view/login/register_page.dart';
import 'package:flutter/material.dart';

import '../googlemap/google_map_page.dart';

class WelcomePage extends StatefulWidget {
  static final String path = 'lib/view/login/loginpage.dart';
  const WelcomePage({Key key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.asset(
                "images/PageLogo.jpg",
                width: screenWidth,
                //height: screenHight / 1.5,
              ),
              // SizedBox(
              //   height: 35,
              // ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 2, left: 8, right: 8),
                child: Center(
                  child: Text(
                    'New rider: By Continuing and signing up for an account\nyou confirm that you agree to Lime User Agreement, and\nacknowledge that you have read Lime Privacy Notice.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              Container(
                //color: Colors.red,
                child: ButtonBar(
                  buttonPadding:
                      EdgeInsets.only(top: 10, bottom: 5, left: 15, right: 15),
                  buttonHeight: 10,
                  buttonMinWidth: screenWidth,
                  children: [
                    Container(
                      width: screenWidth,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: RaisedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.login_outlined),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        textColor: Colors.white,
                        color: Colors.black,
                        padding: EdgeInsets.all(10),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage()
                              //GoogleMapPage(),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: RaisedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.app_registration_rounded,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Register",
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
                                builder: (context) => RegisterPage()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
