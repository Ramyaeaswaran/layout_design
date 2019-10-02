import 'package:flutter/material.dart';

void main() {
  Row r1 = Row(
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              margin: EdgeInsets.symmetric(vertical:2, horizontal:2),
              width: 200,
              child: Text(
                'Strawberry Pavlova', style: TextStyle(color: Colors.black),textAlign: TextAlign.center,)
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            margin: EdgeInsets.symmetric(vertical:2, horizontal:2),
            width: 200,
            child: Center(
              child:
              Text('Pavlova ia a meringue-based dessert named after the Russian ballerine AnnaPavlova.Pavlova features a crisp crust and soft,light inside,toped with fruits and cream',
              style: TextStyle(color: Colors.black),textAlign: TextAlign.center,)
              ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              border: Border.all(
                color: Colors.black,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Text('170 Reviews'),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            margin: EdgeInsets.symmetric(vertical:2, horizontal:2),
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.book, color: Colors.black),
                  Text('PREP:'),
                  Text('25 min'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.timer, color: Colors.black),
                  Text('COOK:'),
                  Text('1 hr'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.restaurant, color: Colors.black),
                  Text('FEED:'),
                  Text('4-6'),
                ],
              ),
            ],
  ),
          ),
        ],
     ),
  ],
  );

  List<Widget> hey = [r1];
  runApp(MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: <Widget>[
              r1,
              Expanded(flex: 1,
                child: Container(
                    child: Image(image: AssetImage('assets/pie.png'))),
              ),
            ],
          ),
        ),
      )
  ),
  );
}