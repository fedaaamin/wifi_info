import 'package:dio/dio.dart';

class DioHelper {
  static Dio? _dio;

  static Dio init() {
    return _dio ??
        Dio(
          BaseOptions(
            baseUrl:
                'http://11163230:60-dayfreetrial@fitnessapi-001-site1.itempurl.com',
            validateStatus: (_) => true,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          ),
        );
  }

  Future<Response<dynamic>> getData({
    required String url,
    Map<String, dynamic>? query,
    bool enableRetry = true,
  }) async {
    try {
      final response = await init().get<dynamic>(
        url,
        queryParameters: query,
      );
      return response;
    } on DioException catch (e) {
      throw Exception(
        e.message ?? '',
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response<dynamic>> postDate({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    bool enableRetry = true,
  }) async {
    try {
      final response = await init().post<dynamic>(
        url,
        queryParameters: query,
        data: data,
      );
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response<dynamic>> patchData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    bool enableRetry = true,
  }) async {
    try {
      final response = await init().patch<dynamic>(
        url,
        queryParameters: query,
        data: data,
      );
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response<dynamic>> delete({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    bool enableRetry = true,
  }) async {
    try {
      final response = await init().delete<dynamic>(
        url,
        queryParameters: query,
        data: data,
      );
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
