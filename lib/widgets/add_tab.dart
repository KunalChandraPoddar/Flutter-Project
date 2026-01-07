import 'package:flutter/material.dart';
import 'package:flutter_application_6/dio_client/client.dart';
import 'package:flutter_application_6/dio_client/weather_controller.dart';

class AddTab extends StatefulWidget {
  const AddTab({super.key});

  @override
  State<AddTab> createState() => _AddTabState();
}

class _AddTabState extends State<AddTab> {
  final controller = WeatherController();

  @override
  void initState() {
    super.initState();
    controller.loadWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Weather")),
      body: ValueListenableBuilder<bool>(
        valueListenable: DioClient.isLoading,
        builder: (_, loading, __) {
          if (loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.weather == null) {
            return const Center(child: Text("Failed to load weather"));
          }

          final w = controller.weather!;
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(w.cityName, style: const TextStyle(fontSize: 24)),
                Text("${w.temp} °C"),
                Text("${w.windSpeed} km/s"),
                Text(w.description),
              ],
            ),
          );
        },
      ),
    );
  }
}
