import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/environment.dart';
import 'package:cosmetropolis/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  static const String TOP_HEADLINES = 'top-headlines';

  final Dio dio = Dio();

  ApiClient() {
    // dio.options.baseUrl = Environment.value.baseUrl!;
    dio.options.connectTimeout = const Duration(minutes: 3).inMilliseconds;
    dio.options.receiveTimeout = const Duration(minutes: 3).inMilliseconds;
    // if (Environment.value.environmentType != EnvType.PRODUCTION) {
    //   dio.interceptors.add(
    //     PrettyDioLogger(
    //       requestHeader: true,
    //       requestBody: true,
    //       responseHeader: true,
    //       responseBody: false,
    //     ),
    //   );
    // }
  }

  Future<Response<Map<String, dynamic>>> post(
    String path,
    dynamic data,
  ) async {
    try {
      return await dio.post(path, data: data);
    } on DioError catch (e) {
      Logger.printError(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> postWithParams(
      String path, dynamic data, Map<String, dynamic> params) async {
    try {
      return await dio.post(path, data: data, queryParameters: params);
    } on DioError catch (e) {
      Logger.printError(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> postWithToken(
      String path, dynamic data, String token) async {
    try {
      return await dio.post(path,
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
    } on DioError catch (e) {
      Logger.printError(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> patchWithToken(
      String path, dynamic data, String token) async {
    try {
      return await dio.patch(path,
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
    } on DioError catch (e) {
      Logger.printError(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> put(String path, dynamic data) async {
    try {
      return await dio.put(path, data: data);
    } on DioError catch (e) {
      Logger.printError(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> delete(
      String path, String token) async {
    try {
      return await dio.delete(path,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
    } on DioError catch (e) {
      Logger.printError(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> get(String path) async {
    try {
      return await dio.get(path);
    } on DioError catch (e) {
      Logger.printError(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> getWithToken(
      String path, String token) async {
    try {
      return await dio.get(path,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
    } on DioError catch (e) {
      Logger.printError(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }
}
