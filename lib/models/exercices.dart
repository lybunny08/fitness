import 'dart:convert';
import 'package:http/http.dart' as http;

const String rapidApiKey =
    '29f191f415mshdba5f9c936acf9ep1d26f3jsnfa8e7dd958e5'; // Remplacez par votre clé RapidAPI

const String baseUrl = 'https://exercisedb.p.rapidapi.com';

Future<Map<String, dynamic>> apiCall(
    String url, Map<String, String> params) async {
  try {
    final Uri uri = Uri.parse(url).replace(queryParameters: params);

    final http.Response response = await http.get(
      uri,
      headers: {
        'X-RapidAPI-Key': rapidApiKey,
        'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (err) {
    print('error: $err');
    return {};
  }
}

Future<Map<String, dynamic>> fetchExercisesByBodypart(String bodyPart) async {
  final Map<String, String> params = {'bodyPart': bodyPart};
  return await apiCall('$baseUrl/exercises/bodyPart/$bodyPart', params);
}

void main() async {
  try {
    final Map<String, dynamic> data =
        await fetchExercisesByBodypart('your_body_part');
    print(data);
  } catch (e) {
    print('Error: $e');
  }
}
