import 'package:flutter/material.dart';

import '../../../model/model_appbar.dart';

class AddPaymentPage extends StatefulWidget {
  AddPaymentPage({Key key}) : super(key: key);

  @override
  State<AddPaymentPage> createState() => _AddPaymentPageState();
}

class _AddPaymentPageState extends State<AddPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 0, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(children: [
                        SizedBox(
                          width: 20,
                        ),
                        closeButton,
                        Spacer(),
                        SizedBox(
                            child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                            shadowColor: Colors.greenAccent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: Size(80, 40),
                          ),
                          onPressed: () {},
                          child: Text('Done'),
                        )),
                        SizedBox(
                          width: 25,
                        )
                      ], textDirection: TextDirection.ltr),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    'Add your credit card',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      FieldPayment(),
                      SizedBox(
                        height: 10,
                      ),
                      FieldPayment(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FieldPayment extends StatelessWidget {
  const FieldPayment({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
          // child: Icon(Icons.email),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.greenAccent),
        ),
        //contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        //labelText: 'Enter your username',
      ),
    );
  }
}
