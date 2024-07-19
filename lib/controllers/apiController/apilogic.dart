import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:chatbot_app/Models/rest_api_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Apilogic extends GetxController {
  var url =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent";
  var key = "AIzaSyCFPIAFDl8g6IxGB5R4n6I5B7s0dNoHStc";

  TextEditingController inputmessage = TextEditingController();
  var displayinputmessage = ''.obs;
  void sendMessage() {
    if (inputmessage.text.isNotEmpty) {
      displayinputmessage.value = inputmessage.text;
    }
  }

  Future<List<RestApiModel>?> fetchingapivalues() async {
    var uri = Uri.parse(url + "?key=" + key);

    var body = {
      "contents": [
        {
          "role": "user",
          "parts": [
            {"text": inputmessage.text}
          ]
        }
      ]
    };

    var requests = await http.post(uri, body: jsonEncode(body));
    print(requests.statusCode);

    if (requests.statusCode == 200) {
      var decodeddata = json.decode(requests.body);

      final List<dynamic> candidates = decodeddata['candidates'];
      print(candidates);
      return candidates.map((e) {
        return RestApiModel.fromjson(e);
      }).toList();
    }
  }
}
