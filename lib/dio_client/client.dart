import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioClient {
  static final ValueNotifier<bool> isLoading = ValueNotifier(false);

  final Dio dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<Response> get(String url, {Map<String, dynamic>? query}) async {
    try {
      isLoading.value = true;
      return await dio.get(url, queryParameters: query);
    } finally {
      isLoading.value = false;
    }
  }
}
