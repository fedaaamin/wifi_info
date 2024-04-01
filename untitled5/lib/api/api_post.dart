import 'package:dio/dio.dart';

class PostData{
final Dio dio;
final String url='http://11163230:60-dayfreetrial@fitnessapi-001-site1.itempurl.com/Api/Trainees';
PostData(this.dio);
void getHttp() async {
  final response = await dio.post(
      url,
    data: {
      "firstName": "user1",
      "lastName": "user2",
      "gmail": "user@gmai.com",
      "password": "pass",
    }
  );
  print(response);
}
}