import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:app_enfermedades/User/repository/auth_repository.dart';

class UserBloc implements Bloc{

  final _auth_repository = AuthRepository();

      //Flujo de datos - Streams (Firebase)

  Stream<User> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User> get authStatus => streamFirebase;

      //CASOS DE USO DEL USER
      //1. SignIn a la aplicacion con Google

  Future<UserCredential>signIn(){
    return _auth_repository.signInFirebase();
  }

  signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}