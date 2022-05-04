import 'package:flutter/material.dart';

Widget buildHeader({
   String name,
   String email,
}) {
  final coloricon = Colors.green[400];
  double size = 20;
  double tfontsize = 14;
  double iconsize = 16;
  return InkWell(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Hi $name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.earbuds_rounded,
                      size: size,
                      color: coloricon,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' 0',
                      style: TextStyle(fontSize: iconsize),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' Kilometers',
                      style: TextStyle(fontSize: tfontsize, color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.directions_bike_outlined,
                      size: 20,
                      color: coloricon,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' 0',
                      style: TextStyle(
                        fontSize: iconsize,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' Rider',
                      style: TextStyle(fontSize: tfontsize, color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.diamond_rounded,
                      size: 20,
                      color: coloricon,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' 0',
                      style: TextStyle(fontSize: iconsize),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' Lime Points',
                      style: TextStyle(fontSize: tfontsize, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
