class Weather {
  String name = "";
  String description = "";
  double temprature = 0;
  double perceived = 0;
  int pressure = 0;
  int humidity = 0;

  Weather(this.name, this.description, this.temprature, this.perceived,
      this.pressure, this.humidity);

  Weather.fromJson(Map<String, dynamic> weatherMap) {
    this.name = weatherMap["name"];
    this.temprature = (weatherMap['main']['temp'] - 273.15) ?? 0; //'C
    this.perceived = (weatherMap['main']['feels_like'] - 273.15) ?? 0; //'C
    this.pressure = weatherMap['main']['pressure'] ?? 0;
    this.humidity = weatherMap['main']['humidity'] ?? 0;
    this.description = weatherMap['weather'][0]['main'] ?? "";
  }
}
