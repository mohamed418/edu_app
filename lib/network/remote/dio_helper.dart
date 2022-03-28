// ignore_for_file: avoid_print
import 'package:dio/dio.dart';
import '../local/cache_helper.dart';

class DioHelper {
  static Dio? dio;
  static Dio? dio2;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://googlesapi.herokuapp.com/api/users/',
        receiveDataWhenStatusError: true,
      ),
    );
    dio2 = Dio(
      BaseOptions(
        baseUrl: 'https://googlesapi.herokuapp.com/api/users/courses/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? lang = 'en',
    required String? token,
    String? track,
    int? points,
  }) async {
    dio2!.options.headers = {
      'authentication': CacheHelper.getData(key: 'token'),
    };
    print('dioooooooooooooo $token');

    return await dio2!.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    dio!.options.headers = {
      'authentication': CacheHelper.getData(key: 'token'),
    };
    return dio!.post(url, data: data);
  }

  static Future<Response> patchData({
    required String url,
    String? token,
    String? track,
    int? points,
  }) async {
    dio2!.options.headers = {
      'authentication': CacheHelper.getData(key: 'token'),
    };
    return dio2!.patch(url);
  }
}
