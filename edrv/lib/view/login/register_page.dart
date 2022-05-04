import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int currentIndex = 0;
  final screen = [
    Center(
      child: Container(
        margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Text(
          "Favorite",
          style: TextStyle(fontSize: 60.0, color: Colors.black),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //color: Colors.red,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.grey[400],
                  textColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.only(left: 8.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
                    'Sign in or sign up',
                    style: TextStyle(fontSize: 25,color: Colors.black),
                  ),
            bottom: TabBar(
              indicatorColor: Colors.white,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('Phone number',style: TextStyle(color: Colors.black,fontSize: 12),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Email',style: TextStyle(color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Social',style: TextStyle(color: Colors.black),),
                    ),
                  ],
                ),
            ),
        backgroundColor: Colors.white,
        body:  TabBarView(children: [
                Center(child: Text('Tab 1 Content'),),
                Center(child: Text('Tab 2 Content'),),
                Center(child: Text('Tab 3 Content'),),
               ],),
      ),
    );
  }
}
