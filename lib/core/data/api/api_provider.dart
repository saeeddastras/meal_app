import 'package:dio/dio.dart';
import 'package:meal_app/core/globals.dart' as globals;


class ApiProvider {
  static Dio? dio;

  static initDio() {
    dio ??= Dio(
      BaseOptions(
        connectTimeout: const Duration(milliseconds: 15000),
        receiveTimeout: const Duration(milliseconds: 15000),
        baseUrl: globals.baseUrl,
      ),
    );
  }




}

typedef ApiSuccessCallback<T> = void Function(T data);

typedef ApiErrorCallback = void Function(int? code, String? message);
