import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<UserCredential> signIn() async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;
    GoogleAuthCredential googleAuthCredential = GoogleAuthProvider.credential(accessToken: gSA.accessToken, idToken: gSA.idToken);

        //el objeto UserCredential obtendra al user
    UserCredential userCredential = await _auth.signInWithCredential(googleAuthCredential);

    return userCredential;
  }

  signOut() async{
    await _auth.signOut().then((value) => print("Sesion cerrada"));
    googleSignIn.signOut();
    print("Sesiones cerradas");
  }

}