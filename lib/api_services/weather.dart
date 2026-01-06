class Weather {
  final String description;
  final double temp;
  final String cityName;

  Weather({
    required this.description,
    required this.temp,
    required this.cityName,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      description: json['weather'][0]['description'],
      temp: json['main']['temp'].toDouble(),
      cityName: json['name'],
    );
  }
}
