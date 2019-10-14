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
    style: TextStyle(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget description() {
  return Text(
    'Pavlova is a meringue-based dessert named after the russian ballerine Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
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
    return  Row(
        children: <Widget>[
          Expanded(flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  title(),
                  Center(
                    child: description(),
                  ),
                      Wrap(
                        //alignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                       // spacing: 20,
                        children: <Widget>[
                          stars(),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text('170 Reviews',
                            ),
                          ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                    width: 200,
                    child: Reuseable(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 2,
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                title(),
                description(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: <Widget>[
                                stars(),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '170 Reviews',
                ),
                      ],
                    ),
                          ],
                        ),
                Reuseable(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class stars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.star, color: Colors.black54),
        Icon(Icons.star, color: Colors.black54),
        Icon(Icons.star, color: Colors.black54),
        Icon(Icons.star, color: Colors.black54),
        Icon(Icons.star, color: Colors.black54),
      ],
    );
  }
}

class Reuseable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
            Icon(Icons.person_outline, color: Colors.green),
            SizedBox(
              height: 5,
            ),
            Text('FEED:'),
            SizedBox(
              height: 5,
            ),
            Text('4 - 6'),
          ],
        ),
      ],
    );
  }
}
