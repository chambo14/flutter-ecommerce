import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/meteo/meteo_client.dart';
import 'package:flutterapp/meteo/models.dart';
import 'package:intl/intl.dart';

class MeteoPage extends StatefulWidget {
  @override
  _MeteoPageState createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  List<MeteoItem> meteoItems;

DateFormat df = new DateFormat("EEEE, d. MMMM yyyy");

  @override
  void initState() {
    getDatas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  meteoItems == null ? Center(child: CircularProgressIndicator()) : ListView.builder(
            itemCount: meteoItems == null ? 0 : meteoItems.length,
            itemBuilder: (context, index) {
              var item = meteoItems[index];
              var itemDate = df.format(DateTime.fromMillisecondsSinceEpoch(item.dt * 1000));
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text(itemDate), Text("${item.temp.day}")],
                ),
              );
            }),
      ),
    );
  }

  void getDatas() async {
    var response = await MeteoClient.getDatas();
    setState(() {
      meteoItems = response.list;
    });
  }
}
