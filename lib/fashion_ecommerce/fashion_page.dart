import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/meteo/models.dart';

class FashionPage extends StatefulWidget {
  @override
  _FashionPageState createState() => _FashionPageState();
}

class _FashionPageState extends State<FashionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "images/model.jpg",
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.arrow_back, color: Colors.white, size: 40,),
                          Stack(
                            alignment: Alignment.topRight,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(Icons.card_travel, color: Colors.white, size: 40,),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.purpleAccent
                                ),
                                child: Text("5", style:TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                              )
                            ],
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 50,
                              height: 50,
                              child: Icon(Icons.dashboard, color: Colors.grey[500]),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Giorgio Armani",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text("New York, United States",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Armani",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 50),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Woman Coat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Size",
                                    style: TextStyle(
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Text(
                                    "Small",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[500],
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Color",
                                    style: TextStyle(
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 10,
                                    decoration: BoxDecoration(
                                        color: Colors.brown[300],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[500],
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        shape: BoxShape.circle),
                                    child: Text("2",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[500],
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Price",
                                    style: TextStyle(
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$ 1,200",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[500],
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.purpleAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.card_travel, color: Colors.white),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xff1F1F1F),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              )
            ],
          ),
        ],
      )),
    );
  }
}
