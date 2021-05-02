import 'dart:math';

import 'package:app_enfermedades/User/InicioSesion.dart';
import 'package:app_enfermedades/pantalla_principal.dart';
import 'package:flutter/material.dart';

class PantallaPrincipal2 extends StatefulWidget {
  @override
  _PantallaPrincipal2State createState() => _PantallaPrincipal2State();
}

class _PantallaPrincipal2State extends State<PantallaPrincipal2> {

  @override
  Widget build(BuildContext context) {

    final logo = Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/9, top: 30.0),
        child: CircleAvatar(
          radius: 90.0,
          backgroundColor: Colors.transparent,
          // foregroundImage: AssetImage('assets/logo_login.png'),
          child: Image(
            image: AssetImage('assets/logo_login.png'),
            fit: BoxFit.cover,
          ),
        )
    );

    final iniciaSesion_Button = InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width/1.4,
        height: MediaQuery.of(context).size.height/17,
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/25),
        child: RaisedButton(
          color: Color(0xff459AFF),

          onPressed: ()async{
            await Navigator.push(context,
                MaterialPageRoute(
                  builder: (BuildContext context) => InicioSesion()));
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Text(
            "Iniciar Sesión",
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

    final registrate_button = InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width/1.4,
        height: MediaQuery.of(context).size.height/17,
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/25),
        child: RaisedButton(
          color: Color(0xff459AFF),

          onPressed: ()async{
            await Navigator.push(context,
                MaterialPageRoute(
                    builder: (BuildContext context) => InicioSesion()));
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Text(
            "Regístrate",
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

    final lector_button = InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width/1.4,
        height: MediaQuery.of(context).size.height/17,
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/25),
        child: RaisedButton(
          color: Color(0xff459AFF),

          onPressed: ()async{
            await Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(
                  builder: (BuildContext context) => PantallaPrincipal(),
                ),
                    (Route<dynamic> route) => false);
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
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

    final text1 = Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: Text(
        "¿Eres colaborador?",
        style: TextStyle(
          fontSize: 22,
          fontFamily: "Lato",
          color: Colors.grey[600]
        ),
      ),
    );

    final text2 = Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: Text(
        "o",
        style: TextStyle(
            fontSize: 22,
            fontFamily: "Lato",
            color: Colors.grey[600]
        ),
      ),
    );


    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              logo,
              text1,
              iniciaSesion_Button,
              text2,
              registrate_button,
              Divider(height: MediaQuery.of(context).size.height/10,color: Colors.transparent),
              lector_button
            ],
          ),
        ],
      ),
    );
  }
}
