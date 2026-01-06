import 'package:flutter/material.dart';
import 'package:flutter_application_6/api_services/weather_api.dart';

class AddTab extends StatefulWidget {
  const AddTab({super.key});

  @override
  State<AddTab> createState() => _AddTabState();
}

class _AddTabState extends State<AddTab> {
  bool isLoading = true;
  Map<String, dynamic>? weather;

  @override
  void initState() {
    super.initState();
    _loadWeather();
  }

  Future<void> _loadWeather() async {
    final api = WeatherApi();
    final result = await api.getWeather(22.580331, 88.435083);

    if (!mounted) return;

    setState(() {
      weather = result;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (weather == null) {
      return const Center(child: Text("Failed to load weather"));
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF1F3F4),
      appBar: AppBar(title: const Text('Weather'), elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(weather!['name'], style: const TextStyle(fontSize: 24)),
            Text(
              "${weather!['main']['temp']} °C",
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "${weather!['wind']['speed']} km/s",
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              weather!['weather'][0]['description'],
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
