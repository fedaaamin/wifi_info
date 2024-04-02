import 'package:dio/dio.dart';

class ApiPost {
  final Dio dio = Dio();
  final String url = "/Api/Trainees";
  final String firstName;
  final String gmail;

  ApiPost(this.firstName, this.gmail);

  postInfo() async {
    try {
      Response response = await dio.post(url,
          data: {
            "traineeId": 1,
            "firstName": firstName,
            "lastName": "user2",
            "gmail": gmail,
            "password": "pass",
            "gender": "Male",
            "purpose": "Lose Weight",
            "hasTools": true,
            "dateOfBirth": "2002-01-31T23:47:09.002",
            "height": 185,
            "weight": 70,
            "fitnessLevel": "Low",
            "requiredCalories": 2500,
            "availabaleDays": ["Friday", "Saturday"],
            "traineeSports": ["Football"],
            "traineeFoods": ["Liver"]
          },
          options: Options(
            validateStatus: (_) => true,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          ));
      print(response.data);
      print('qqqqqczaefrew2wewe');
    } on DioException catch (error) {
      print('Error sending user data: $error');
    }
  }
}

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
