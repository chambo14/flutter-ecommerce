import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/facebook/facebook_ami_page.dart';

class FacebookPage extends StatelessWidget {

  List<Ami> amis = [
    Ami(name: "Sandrine", commonFriends: 8,image:"images/2019.jpg"),
    Ami(name: "Christian", commonFriends: 1,image:"images/2020.jpg"),
    Ami(name: "Marabout Benin", commonFriends: 0,image:"images/naturev.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            searchSection(),
            SizedBox(
              height: 6,
            ),
            suggestionAmiSection(),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            invitationSection(),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: amis.length,
              itemBuilder: (context, index) {
                Ami ami = amis[index];
                return invitationItem(context, ami);
              },
            ))
          ],
        ),
      ),
    );
  }

  Widget invitationItem(BuildContext context, Ami ami) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FacebookAmiPage(ami: ami)));
      },
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(ami.image),
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
                      ami.name,
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
                Text("${ami.commonFriends} ami(e)s en commun"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Text(
                          "Confirmer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(8.0),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "Supprimer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(8.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding invitationSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Invitations",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "171",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            "Voir tout",
            style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.normal,
                fontSize: 20),
          ),
        ],
      ),
    );
  }

  Row suggestionAmiSection() {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Sugestions",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(50)),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Tous les amis",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(50)),
        )
      ],
    );
  }

  Row searchSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Amis",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Container(
          width: 50,
          height: 50,
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }

  Center buildCenter() {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: Text("Facebook is bae"),
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            //shape: BoxShape.circle
            border: Border.all(color: Colors.black),
            // borderRadius: BorderRadius.circular(50)
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
      ),
    );
  }
}

class Ami {
  final String name;
  final int commonFriends;
  final String image;

  Ami({this.name, this.commonFriends, this.image});
}
