import 'package:app_enfermedades/User/bloc_user.dart';
import 'package:app_enfermedades/User/modelo/user.dart';
import 'package:app_enfermedades/User/signin_screen.dart';
import 'package:app_enfermedades/button_bar.dart';
import 'package:app_enfermedades/user_info.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  Userr user;

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
        stream: userBloc.streamFirebase,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              print("se quedo waiting");
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(color: Colors.white,),
                  Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text("No fue posible recuperar una información\n de usuario...",
                        style: TextStyle(color: Colors.white, fontFamily: 'Lato'),)
                  )
                ],
              );
            case ConnectionState.none:
              print("se quedo none");
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(color: Colors.white,),
                  Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text("No fue posible recuperar una información\n de usuario...",
                        style: TextStyle(color: Colors.white, fontFamily: 'Lato'),)
                  )
                ],
              );
            case ConnectionState.active:
              return showProfileData(snapshot);
            case ConnectionState.done:
              return showProfileData(snapshot);
          }
        }
    );
  }

  Widget showProfileData(AsyncSnapshot snapshot){
    if(!snapshot.hasData || snapshot.hasError){
      print('Usuario NO logueado');
      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircularProgressIndicator(color: Colors.white,),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                    child: Text("No fue posible recuperar una información\n de usuario...",
                      style: TextStyle(color: Colors.white, fontFamily: 'Lato'),)
                )
              ],
            ),
            // UserInfo('assets/img/ann.jpg', 'Anahí Salgado','anahi@platzi.com'),
            // ButtonsBar()
          ],
        ),
      );
    }else{
      print('Usuario logueado');
      user = Userr(name: snapshot.data.displayName, email: snapshot.data.email, photoURL: snapshot.data.photoUrl);

      final title = Text(
        'Profile',
        style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24.0
        ),
      );

      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 40,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                title
              ],
            ),
            UserInfoo(user),
          ],
        ),
      );
    }
  }

}