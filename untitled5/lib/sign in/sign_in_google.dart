import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/sign_button.dart';
import 'package:untitled5/User_information/gender.dart';
class SignInGoogle extends StatefulWidget {
  const SignInGoogle({super.key});

  @override
  State<SignInGoogle> createState() => _SignInGoogleState();
}

class _SignInGoogleState extends State<SignInGoogle> {
  final String url="http://11163230:60-dayfreetrial@fitnessapi-001-site1.itempurl.com/Api/Trainees";
  Future  signInWithGoogle() async {
    // Trigger the authentication flow
    final googleSignIn = GoogleSignIn();
    googleSignIn.signOut();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    // Obtain the auth details from the request
    if (googleUser != null ) {
      String? name = googleUser.displayName;
      String? email = googleUser.email;
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
     await FirebaseAuth.instance.signInWithCredential(credential);
      Map<String, dynamic> userData = {
        'firstName': name,
        'gmail': email,
      };
      await sendUserDataToApi(userData);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context)=>const Gender()
          )
      );
    }
  }
 Future<void> sendUserDataToApi(userData) async {
    try {
      Dio dio = Dio();
      Response response = await dio.post(
        url,
        data: userData,
         options:  Options (
             validateStatus: (_) => true,
           contentType: Headers.jsonContentType,
           responseType:ResponseType.json,
         )
      );
      print(response.data);
      print('qqqqqczaefrew2wewe');
    } on DioException catch (error) {
      print('Error sending user data: $error');
    }
  }
  @override
  Widget build(BuildContext context) {
    return SignInButton(
           buttonSize: ButtonSize.large,
             buttonType: ButtonType.google,
             width: 263,
             onPressed: () {

             signInWithGoogle();
             }
    ) ;
  }
}
