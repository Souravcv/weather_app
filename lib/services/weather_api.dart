import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/weather_model.dart';
class WeatherApiClient{
Future<Weather>? getCurrentWeather(String? location)async{
  var endpoint =Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=dd016c37545c8ba4c049f9d659420689&units=metrice");

  var resposne = await http.get(endpoint);
  var body = jsonDecode(resposne.body);
  print(Weather.fromjson(body).cityName);
  return Weather.fromjson(body);

}
}