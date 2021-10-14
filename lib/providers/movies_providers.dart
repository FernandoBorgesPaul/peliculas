import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/now_playing_response.dart';

class MoviesProvider extends ChangeNotifier {
  String _baseUrl = 'api.themoviedb.org';
  String _apiKey = '4b74cc79bff41547a08f2fb211eadb37';
  String _language = 'es-ES';

  MoviesProvider() {
    print('Movies Providers inicializado');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('getOnDisplayMovies');

    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingReponse.fromJson(response.body);

    print(nowPlayingResponse.results[0].title);
  }
}
