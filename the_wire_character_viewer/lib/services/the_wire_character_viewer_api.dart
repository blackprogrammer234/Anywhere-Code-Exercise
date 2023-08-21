import 'dart:convert';

import 'package:the_wire_character_viewer/models/the_wire_character_api_model.dart';
import 'package:http/http.dart' as http;


class TheWireCharacterViewApi{

  Future<TheWireCharacterModel> fetchDetailListOfCharacter() async {
    final response = await http
        .get(Uri.parse('http://api.duckduckgo.com/?q=the+wire+characters&format=json'));
    if (response.statusCode == 200) {}
    return TheWireCharacterModel.fromJson(jsonDecode(response.body));
  }
}
