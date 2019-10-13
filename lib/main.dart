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

Widget imagedetails() {
  return Image(
    fit: BoxFit.cover,
    image: AssetImage('assets/pie.png'),
  );
}

Widget title() {
  return Text(
    'Strawberry Pavlova',
    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget description() {
  return Text(
    'Pavlova is a meringue-based dessert named after the russian ballerine AnnaPavlova.Pavlova features a crisp crust and soft,light inside,topped with fruits and whipped cream.',
    style: TextStyle(color: Colors.black87),
    textAlign: TextAlign.center,
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
                  child: title()),
              Container(
                width: 200,
                child: Center(
                  child: description(),
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Icon(Icons.star, color: Colors.black54),
                      Container(
                        child: Text(
                          '170 Reviews',
                          //overflow: TextOverflow.ellipsis,
                        ),
                      ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                width: 200,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('PREP:'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('25 min'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.timer, color: Colors.green),
                        SizedBox(
                          height: 5,
                        ),
                        Text('COOK:'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('1 hour'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.person, color: Colors.green),
                        SizedBox(
                          height: 5,
                        ),
                        Text('FEED:'),
                        SizedBox(
                          height: 5,
                        ),
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
          flex: 2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(child: imagedetails()),
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
          child: Container(child: imagedetails()),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  //  margin: EdgeInsets.symmetric(vertical:2, horizontal:2),
                  width: 200,
                  child: title()),
              Container(
                width: 200,
                child: description(),
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
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('PREP:'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('25 min'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.timer, color: Colors.green),
                      SizedBox(
                        height: 5,
                      ),
                      Text('COOK:'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('1 hour'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.person, color: Colors.green),
                      SizedBox(
                        height: 5,
                      ),
                      Text('FEED:'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('4-6'),
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
