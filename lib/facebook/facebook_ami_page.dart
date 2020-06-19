import 'package:flutter/material.dart';
import 'package:flutterapp/facebook/facebook_page.dart';

class FacebookAmiPage extends StatefulWidget {

  final Ami ami;

  FacebookAmiPage({this.ami});

  @override
  _FacebookAmiPageState createState() => _FacebookAmiPageState();
}

class _FacebookAmiPageState extends State<FacebookAmiPage> {

  int currentIndexBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook ami"),
        //centerTitle: true,
        actions: <Widget>[
          Icon(
            Icons.more_vert,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            currentIndexBar = index;
          });
        },
currentIndex: currentIndexBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings")
          ),
        ],
      ),
      body: SafeArea(

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(widget.ami.image),
              radius: 60,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.ami.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("36 semai",
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.normal,
                              fontSize: 15))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("${widget.ami.commonFriends} ami(e)s en commun"),
                  SizedBox(
                    height: 10,
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
