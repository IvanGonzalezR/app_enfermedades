import 'dart:ui';

import 'package:app_enfermedades/User/InicioSesion.dart';
import 'package:app_enfermedades/pantalla_principal.dart';
import 'package:flutter/material.dart';


class sign_up extends StatefulWidget{
  static String tag = 'Login_page';

 _sign_upState createState() => new _sign_upState();
}

class _sign_upState extends State<sign_up>{
  @override 

  Widget build(BuildContext context){


    // final logo =  Container(
    //     margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/28),
    //     padding: EdgeInsets.only(bottom: 20.0),
    //       child: CircleAvatar(
    //         radius: 48.0,
    //         backgroundColor: Colors.transparent,
    //         child: Image(
    //           image: AssetImage('assets/logo_login.png'),
    //           fit: BoxFit.cover,
    //         ),
    //       )
    // );

      final getPresentacion =  Padding(
          // padding:  EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          padding:  EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 0.0),
          child: Center(
            child: Text(
              'Regístrate',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, fontFamily: "Lato"),
              textAlign: TextAlign.center,
            ),
          )
    );


    final logoGoogle = InkWell(
      onTap: (){ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Google Tapped")));},
      child: Container(
          height: MediaQuery.of(context).size.height/14,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: MediaQuery.of(context).size.height/28,
            foregroundImage: AssetImage('assets/logo_google.png'),
          )),
          // child: Image(image: AssetImage('assets/google_logo.jpg'),fit: BoxFit.fill,),
    );

    final inputCorreo = Container(
      width: MediaQuery.of(context).size.width/2.5,

      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
            hintText: 'correo@gmail.com',
            border: UnderlineInputBorder(),
            hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14)
        ) ,
      ),
    );

    final inputPassword = Container(
      width: MediaQuery.of(context).size.width/2.5,

      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: '',
        obscureText: true,
        decoration: InputDecoration(
            hintText: '********',
            border: UnderlineInputBorder(),
            hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14)
        ) ,
      ),
    );

    final correo1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Correo:",
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 18.0
          ),
        ),
        inputCorreo
      ],
    );

    final password = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Contraseña:",
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 18.0
          ),
        ),
        inputPassword
      ],
    );

    final correo2 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Confirmar correo:",
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 18.0
          ),
        ),
        inputCorreo
      ],
    );

    final registerButton = InkWell(
      onTap: () => PantallaPrincipal(),
      child: Container(
        width: MediaQuery.of(context).size.width/2,
        height: MediaQuery.of(context).size.height/17,
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
            "Registrarme",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Lato",
                color: Colors.white,
                fontSize: 16.0
            ),
          ),
        ),

      ),
    );


    final prefieres = Container(
      child: Text(
        "O si prefieres, inicia sesión con...",
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16
        ),
      ),
    );

    final logos = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        logoGoogle,
        SizedBox(width: 20.0,),
      ],
    );

    return new GestureDetector(
        onTap: (){FocusScope.of(context).unfocus();},
        child: Scaffold(

      backgroundColor: Color(0xffefefef),
      body: Container(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/9, right: MediaQuery.of(context).size.width/9),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 0.0),
            child: Column(
            children:[
              //Aquí vna los widgets de la pantalla, de manera ordenada
              // logo,
              getPresentacion,
              Divider(color: Colors.transparent, height: MediaQuery.of(context).size.height/15,),
              correo1,
              Divider(color: Colors.transparent, height: MediaQuery.of(context).size.height/60,),
              correo2,
              Divider(color: Colors.transparent, height: MediaQuery.of(context).size.height/60,),
              password,
              Divider(color: Colors.transparent, height: MediaQuery.of(context).size.height/25,),
              prefieres,
              Divider(color: Colors.transparent, height: MediaQuery.of(context).size.height/80,),
              logos,

              Divider(color: Colors.transparent, height: MediaQuery.of(context).size.height/22,),
              registerButton,
              // getPresentacion,
              // SizedBox(height: 48.0),
              // logoFb,
              // SizedBox(height: 48.0),
              // logoGm,
              // SizedBox(height: 48.0),
              // logoGoogle,
              // SizedBox(height: 48.0),
              // forgoLabel
            ],
          ),
          )
        ),
      ),
    );
  } 
}



