import 'package:app_enfermedades/pantalla_principal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class log_in extends StatefulWidget{

  static String tag = 'Login_page';

 _log_inState createState() => new _log_inState();
}

class _log_inState extends State<log_in>{
  @override 

  Widget build(BuildContext context){

    // final logo = Container(
    //     margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/28) ,
    //     padding: EdgeInsets.only(left: 20.0, right: 20.0),
    //     child: CircleAvatar(
    //       radius: 48.0,
    //       backgroundColor: Colors.transparent,
    //       // foregroundImage: AssetImage('assets/logo_login.png'),
    //       child: Image(
    //         image: AssetImage('assets/logo_login.png'),
    //         fit: BoxFit.cover,
    //       ),
    //     )
    // );

    final textBienvenido =  Padding(
          padding:  EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
          child: Center(
            child: Text(
              'Iniciar Sesión',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, fontFamily: "Lato"),
              textAlign: TextAlign.center,
            ),
          )
        );

//Texto Correo
    final setCorreo =  Container(
          padding:  EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 10.0),
            child: Text(
              'Correo:',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20, fontFamily: "Lato"),
              textAlign: TextAlign.left,
            ),
        );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Email',
        border: UnderlineInputBorder(),
      ),
    );

//Texto contraseña
    final setContrasena =  Container(
          padding:  EdgeInsets.fromLTRB(0.0,20.0, 20.0, 10.0),
            child: Text(
              'Contraseña:',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20, fontFamily: "Lato"),
              textAlign: TextAlign.left,
            ),
        );

    final password = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        border: UnderlineInputBorder(),
      ),
    );

    final loginButton = InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width/2,
        height: MediaQuery.of(context).size.height/17,
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/17),
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
            "Iniciar Sesión",
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


    final forgoLabel = TextButton(
    
    child: Text('Olvidé mi contraseña',
      style: TextStyle(
          color: Color(0xff459AFF),
          fontFamily: "Lato",

        decoration: TextDecoration.underline
      ),
    ),
    onPressed: () {},

    );
    return new GestureDetector(
      onTap: (){FocusScope.of(context).unfocus();},
      child: Scaffold(

      backgroundColor: Color(0xffefefef),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/13, right: MediaQuery.of(context).size.width/13,
                                ),
        //Vamos agregando los elementos de inicio de sesión.
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // logo,
              textBienvenido,
            Divider(height: MediaQuery.of(context).size.height*0.08, color: Colors.transparent,),
            Column(
                    children: [
                      SizedBox(height: 48.0),
                      Container(child: setCorreo,
                          alignment: Alignment.centerLeft),
                      email,

                      //Contrasena
                      SizedBox(height: 8.0),
                      Container(child: setContrasena,
                          alignment: Alignment.centerLeft),
                      password,
                    ],
                  ),
                //Olvide mi contrasena
              SizedBox(height: 10),
              Container(child: forgoLabel,
              alignment: Alignment.centerRight),

                //Boton Iniciar sesion
              SizedBox(height: 24.0),
              loginButton,
            ],
          ),
        ),
      ),
      )
    );
  } 
}



