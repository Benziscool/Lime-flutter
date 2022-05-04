import 'package:edrv/view/menu/payment/add_payment_page.dart';
import 'package:flutter/material.dart';
import '../../../model/model_appbar.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 0, right: 0),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Text(
                          'Payment',
                          style: TextStyle(color: Colors.black, fontSize: 22.0),
                        ),
                      )
                    ], textDirection: TextDirection.ltr)),
                  ],
                ),
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text('PAYMENT ME THODS'),
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: Center(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Icon(Icons.payment_outlined),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Add Card',
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print('Add Card');
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddPaymentPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
