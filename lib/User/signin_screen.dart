import 'package:app_enfermedades/pantalla_principal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app_enfermedades/User/bloc_user.dart';
// import 'package:platzi_trips_app/platzi_trips_cupertino.dart';
import 'package:app_enfermedades/gradient_back.dart';
// import 'package:platzi_trips_app/widgets/button_green.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();

}

class _SignInScreenState extends State<SignInScreen> {
  // Para el bloc
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){
    return StreamBuilder(stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
            //snapshot contiene el objeto User desde Firebas
        if(!snapshot.hasData || snapshot.hasError){
          return signInGoogleUi();
        } else {
          return BlocProvider<UserBloc>(child: PantallaPrincipal(), bloc: UserBloc());;
        }

      });
  }


  Widget signInGoogleUi() {
    final lector_button = InkWell(
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width / 1.45,
        height: MediaQuery
            .of(context)
            .size
            .height / 16,
        margin: EdgeInsets.only(bottom: MediaQuery
            .of(context)
            .size
            .height / 25),
        child: RaisedButton(
          color: Color(0xff459AFF),

          onPressed: () async {
            await Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(
                  builder: (BuildContext context) => PantallaPrincipal(),
                ),
                    (Route<dynamic> route) => false);
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9)),
          child: Text(
            "Continuar como lector",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Lato",
                color: Colors.white,
                fontSize: 18.0
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("", null),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bienvenido a tu aplicación de salud", style:
              TextStyle(
                  fontSize: 37.00,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
                textAlign: TextAlign.center,
              ),
              // ButtonGreen(text: "Ingresar con Gmail", onPressed: (){}, width: 300.0, height: 50.0,)
              Divider(color: Colors.transparent, height: MediaQuery.of(context).size.height/10,),
              GoogleAuthButton(onPressed: () {
                userBloc.signIn().then((UserCredential user) =>
                    print("El usuario es ${user.user.displayName}"));
              }, darkMode: false, text: "Inicia sesion con Google"),
              Divider(endIndent: 20.0, color: Colors.transparent, indent: 20.0,),
              lector_button,
            ],
          )
        ],
      ),
    );
  }
}
