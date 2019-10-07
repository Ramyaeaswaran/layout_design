import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      home: recipe(),
    ),
  );
}

Widget body(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.portrait) {
    return portrait();
  } else {
    return landscape();
  }
}

Widget build(BuildContext context) {
  return Scaffold(
    body: body(context),
  );
}

class recipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
    );
  }
}

class landscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  //  margin: EdgeInsets.symmetric(vertical:2, horizontal:2),
                  width: 200,
                  child: Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
              Container(
                width: 200,
                child: Center(
                    child: Text(
                  'Pavlova ia a meringue-based dessert named after the Russian ballerine AnnaPavlova.Pavlova features a crisp crust and soft,light inside,toped with fruits and cream',
                  style: TextStyle(color: Colors.black87),
                  textAlign: TextAlign.center,
                )),
              ),
              Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Container(
                       child:Text(
                        '170 Reviews',
                        overflow: TextOverflow.ellipsis,
                      ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.green),
                        Text('PREP:'),
                        Text('25 min'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.check_circle_outline, color: Colors.green),
                        Text('COOK:'),
                        Text('1 hr'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.person, color: Colors.green),
                        Text('FEED:'),
                        Text('4-6'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Image(
                  image: AssetImage('assets/pie.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class portrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/pie.png'),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  //  margin: EdgeInsets.symmetric(vertical:2, horizontal:2),
                  width: 200,
                  child: Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: 200,
                  child: Text(
                    'Pavlova ia a meringue-based dessert named after the Russian ballerine AnnaPavlova.Pavlova features a crisp crust and soft,light inside,toped with fruits and cream',
                    style: TextStyle(color: Colors.black87),
                    textAlign: TextAlign.center,
                  )),
              Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Text(
                        '170 Reviews',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                      ),
                      Text('PREP:'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('25 min'),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(Icons.timer, color: Colors.green),
                      ),
                      Text('COOK:'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('1 hr'),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(Icons.person, color: Colors.green),
                      ),
                      Text('FEED:'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('4-6'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
