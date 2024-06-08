import 'dart:convert';

import 'package:wikigame/model/game_response.dart';
import 'package:http/http.dart' as http;

class GameRepository {
  static String mainUrl = 'https://api.igdb.com/v4/games';
  var gameListUrl = '$mainUrl/games';
  final String apiKey = '<Here is your api key>';

  Future<GameResponse> getGames() async {
    var response = await http.post(gameListUrl,
        headers: {"Acceppt": "application/json", "user-key": "$apiKey"},
        body: "");

    print("${response.statusCode}");
    return GameResponse.fromJson(jsonDecode(response.body));
  }

  Future<GameResponse> getSlider() async {
    var response = await http.post(gameListUrl,
        headers: {"Acceppt": "application/json", "user-key": "$apiKey"},
        body: "");
    print("${response.statusCode}");
    return GameResponse.fromJson(jsonDecode(response.body));
  }
}
