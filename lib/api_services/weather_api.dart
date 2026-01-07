import 'package:flutter_application_6/api_services/weather_model.dart';
import 'package:flutter_application_6/dio_client/client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherApi {
  final DioClient _client = DioClient();

  static final String apiKey =
      dotenv.env['OPENWEATHER_API_KEY'] ?? '';

  static const String baseUrl =
      "https://api.openweathermap.org/data/2.5/weather";

  Future<Weather?> fetchWeather({
    required double lat,
    required double lon,
  }) async {
    try {
      final response = await _client.get(
        baseUrl,
        query: {
          'lat': lat,
          'lon': lon,
          'appid': apiKey,
          'units': 'metric',
        },
      );

      return Weather.fromJson(response.data);
    } catch (e) {
      print("Weather API Error: $e");
      return null;
    }
  }
}

