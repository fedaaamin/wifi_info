import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/sign_button.dart';
import 'package:untitled5/Home/nav_buttons.dart';
import 'package:untitled5/User_information/gender.dart';
import 'package:untitled5/api/api_post.dart';

class SignInGoogle extends StatefulWidget {
  const SignInGoogle({super.key});

  @override
  State<SignInGoogle> createState() => _SignInGoogleState();
}

class _SignInGoogleState extends State<SignInGoogle> {
  String url =
      "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Trainees";

  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final googleSignIn = GoogleSignIn();
    googleSignIn.signOut();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    // Obtain the auth details from the request
    if (googleUser != null) {
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
      print("=================================");
      final dioHelper = DioHelper();
      final rs = dioHelper.getData(
          url:
              "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/CheckIfTraineeExists?mail=${email}");
      print("=================================");
      print(rs);
      print("==================================================");
      if (rs == 1) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NavButtons()));
      } else if (rs == 0) {
        final dioHelper = DioHelper();
        await dioHelper
            .postDate(url: url, data: {"name": name, "gmail": email});
        // await ApiPost(name!, email);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Gender()));
      }
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
        });
  }
}
