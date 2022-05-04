import 'package:flutter/material.dart';

import '../../model/model_appbar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Stack(
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
                              children: [closeButton],
                              textDirection: TextDirection.ltr)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
