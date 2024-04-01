import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:sign_button/sign_button.dart';
class SignInFacebook extends StatefulWidget {
  const SignInFacebook({super.key});

  @override
  State<SignInFacebook> createState() => _SignInFacebookState();
}

class _SignInFacebookState extends State<SignInFacebook> {
  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
  @override
  Widget build(BuildContext context) {
    return SignInButton(
      buttonType: ButtonType.facebook,
      buttonSize: ButtonSize.large,
      btnColor: const Color(0xff4875FD),
      width: 263,
      onPressed: (){
       const SignInFacebook();
      },
    );
  }
}
