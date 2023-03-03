

class Weather{
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feelsLike;
  int? pressure;
  Weather({
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.pressure,
    this.feelsLike

  });
  Weather.fromjson(Map<String,dynamic>json){
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wint"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feelsLike = json["main"]["feelsLike"];
  }
}