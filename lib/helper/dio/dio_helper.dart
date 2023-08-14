

import 'package:dio/dio.dart';

import 'dio_interceotors.dart';
class DioUtilNew {
  static DioUtilNew? _instance;
  static Dio? _dio;

  static DioUtilNew? getInstance() {
    if (_instance == null) {
      _dio = Dio(_getOptions());
      _dio!.interceptors.add(CustomInterceptors());
    }
    return _instance;
  }

  static Dio? get dio => _dio;

  static void setDioAgain() {
    _dio = Dio(_getOptions());
  }

  static BaseOptions _getOptions() {
    BaseOptions options = BaseOptions(
      followRedirects: false,
      validateStatus: (status) => status! <= 500,
    );

    options.connectTimeout = const Duration(seconds: 100 * 1000); //10 sec
    options.receiveTimeout = const Duration(seconds: 100 * 1000); //20 sec
    options.baseUrl = "https://api.themoviedb.org/3/discover/";
    // options.headers = {
    //   'phone': phoneNumber,
    //   'password': password,
    // };
    options.queryParameters = {};
    return options;
  }
}