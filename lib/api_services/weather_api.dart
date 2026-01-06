import 'package:dio/dio.dart';

class WeatherApi {
  final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  static const String apiKey = "307f63ab9714e2a7573023d8eb0916fe";
  static const String baseUrl =
      "https://api.openweathermap.org/data/2.5/weather";

  Future<Map<String, dynamic>?> getWeather(
      double lat, double lon) async {
    try {
      final response = await _dio.get(
        baseUrl,
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'appid': apiKey,
          'units': 'metric',
        },
      );

      return response.data;
    } catch (e) {
      print("Weather API Error: $e");
      return null;
    }
  }
}

