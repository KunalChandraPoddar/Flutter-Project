import 'package:flutter/foundation.dart';
import 'package:flutter_application_6/api_services/weather_api.dart';
import 'package:flutter_application_6/api_services/weather_model.dart';

class WeatherController extends ChangeNotifier {
  final WeatherApi _api = WeatherApi();

  Weather? weather;
  String? error;

  Future<void> loadWeather() async {
    weather = await _api.fetchWeather(
      lat: 22.580331,
      lon: 88.435083,
    );

    if (weather == null) {
      error = "Failed to load weather";
    }

    notifyListeners();
  }
}
