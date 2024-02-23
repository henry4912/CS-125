import 'dart:core';

import 'package:cs125/Exercise.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  static const apiKey = 'bUMV2BLqvejOGcBb4FFHzQ==dPiWwbllHtqy0U1J';
  static const baseURL = 'https://api.api-ninjas.com/v1/exercises';


  static Future<List<Exercise>> fetchExercises({String? name, String? type, String? muscle, String? difficulty, int? offset}) async {
    Map<String, String> queryParams = {};
    // TODO? to check if query is valid
    //could check if the words are the words allowed by api ninjas
    if (name != null) queryParams['name'] = name;
    if (type != null) queryParams['type'] = type;
    if (muscle != null) queryParams['muscle'] = muscle;
    if (difficulty != null) queryParams['difficulty'] = difficulty;
    if (offset != null) queryParams['offset'] = offset.toString();

    final uri = Uri.parse(baseURL).replace(queryParameters: queryParams);

    final response = await http.get(
      uri,
      headers: {'X-Api-Key': apiKey},

    );

    //if code is GOOD make exercise class to store the information
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Exercise.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load exercises');
    }
  }
}