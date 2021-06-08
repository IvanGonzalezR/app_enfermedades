import 'package:app_enfermedades/User/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'circle_button.dart';

class ButtonsBarr extends StatelessWidget {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/3.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // //Cambiar contrasena
            // CircleButton(true, Icons.person, 20.0, Color.fromRGBO(255, 255, 255, 0.6)),
            // //anadir nuevo lugar
            // CircleButton(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1)),
            //Cerrar sesion
            CircleButton(true, Icons.exit_to_app, 20.0, Color.fromRGBO(255, 255, 255, 0.6), () => {
              userBloc.signOut()
            }),
          ],
        )
    );
  }

}