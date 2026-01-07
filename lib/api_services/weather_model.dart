class Weather {
  final String cityName;
  final double temp;
  final double windSpeed;
  final String description;

  Weather({
    required this.cityName,
    required this.temp,
    required this.windSpeed,
    required this.description,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temp: (json['main']['temp'] as num).toDouble(),
      windSpeed: (json['wind']['speed'] as num).toDouble(),
      description: json['weather'][0]['description'],
    );
  }
}
