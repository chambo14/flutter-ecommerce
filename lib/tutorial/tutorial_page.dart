import 'package:flutter/material.dart';

class TutorialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset(
              "images/naturev.jpg",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Kandersteg, Switzerland",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Text("41"),
                  Icon(
                    Icons.star,
                    color: Colors.red[500],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.call,
                        color: Colors.lightBlue,
                      ),
                      Text("CALL",style: TextStyle(color: Colors.lightBlue),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.near_me,
                        color: Colors.lightBlue,
                      ),
                      Text("ROUTE",style: TextStyle(color: Colors.lightBlue),)
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        color: Colors.lightBlue,
                      ),
                      Text("Share",style: TextStyle(color: Colors.lightBlue)),
                    ],
                  ),


                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(32),
              child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                  'Alps. Situated 1,578 meters above sea level, it is one of the '
                  'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                  'half-hour walk through pastures and pine forest, leads you to the '
                  'lake, which warms to 20 degrees Celsius in the summer. Activities '
                  'enjoyed here include rowing, and riding the summer toboggan run.'),
            ),
          ],
        ),
      ),
    );
  }
}
