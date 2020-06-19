import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/facebook/facebook_page.dart';
import 'package:flutterapp/fashion_ecommerce/fashion_page.dart';
import 'package:flutterapp/meteo/meteo_page.dart';
import 'package:flutterapp/tutorial/tutorial_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FashionPage(),

    );
  }
}
