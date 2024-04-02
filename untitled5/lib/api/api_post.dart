import 'package:dio/dio.dart';

class ApiPost{
final Dio dio =Dio();
final String url="http://11163230:60-dayfreetrial@fitnessapi-001-site1.itempurl.com/Api/Trainees";
final String firstName;
final String gmail;
  ApiPost(
      this.firstName,
      this.gmail
      );
  postInfo() async
  {
    try {
      Response response = await dio.post(
          url,
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
            "availabaleDays": [
              "Friday",
              "Saturday"
            ],
            "traineeSports": [
              "Football"
            ],
            "traineeFoods": [
              "Liver"
            ]
          },
          options: Options(
            validateStatus: (_) => true,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          )
      );
      print(response.data);
      print('qqqqqczaefrew2wewe');
    }
    on DioException catch (error) {
      print('Error sending user data: $error');
    }
  }

}