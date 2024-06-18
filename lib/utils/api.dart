// ignore_for_file: unused_field

import 'package:dio/dio.dart';

class ApiEndPoints {
  static final String baseUrl = 'http://10.1.136.159:8000';
  static _AuthEndPoints _authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = '/auth/register';
  final String loginEmail = '/auth/login';
}

Dio dio() {
  Dio dio = Dio();

  dio.options.baseUrl = ApiEndPoints.baseUrl;

  dio.options.headers['accept'] = 'Application/Json';

  return dio;
}
