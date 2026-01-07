import 'package:flutter/material.dart';
import 'widgets/my_app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await dotenv.load(fileName: '.env');
  } catch (e) {
    print(" .env FILE NOT FOUND");
  }

  runApp(const MyApp());
}
