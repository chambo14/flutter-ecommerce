import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutterapp/meteo/models.dart';
import 'package:http/http.dart' as http;

class MeteoClient {
  static Future<MeteoResponse> getDatas() async {

    debugPrint("get meteo");

    final response = await http.get(
        "http://api.openweathermap.org/data/2.5/forecast/daily?q=abidjan&appid=1621c4ac3c7779b94809221312ca3747&units=metric&cnt=7");
    if (response.statusCode == 200) {
      var _json = response.body;
      debugPrint(_json);
      var _jsondecode = json.decode(_json);

      return MeteoResponse.fromJson(_jsondecode);
    }
    else {
      throw Exception('Failed to load post ' + response.reasonPhrase);
    }
  }
}
