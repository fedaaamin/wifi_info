import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future signInWithGoogle() async {
  // Trigger the authentication flow
  final googleSignIn = GoogleSignIn();
  googleSignIn.signOut();
  final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

  // Obtain the auth details from the request
  if (googleUser != null) {
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
