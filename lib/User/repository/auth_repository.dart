import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_enfermedades/User/repository/firebase_auth_api.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthRepository {

  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<UserCredential> signInFirebase() => _firebaseAuthAPI.signIn();

  signOut() => _firebaseAuthAPI.signOut();

}