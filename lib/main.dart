import 'package:app_enfermedades/User/InicioSesion.dart';
import 'package:app_enfermedades/pantalla_acerca_de.dart';
import 'package:app_enfermedades/pantalla_principal.dart';
import 'package:app_enfermedades/pantalla_principal2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//PAra utilizar variables y que guarden sus datos sera necesario crear un stateful widget
void main() =>  runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: PantallaPrincipal2(),
    );
  }
}

class pasntallaPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('App Enfermedades'),
          ),
          body: InicioSesion(),
          //Boton signo de interrogacion
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => PantallaAcercaDe()));
            },
            tooltip: 'Información sobre nosotros',
            child: Icon(CupertinoIcons.question),
          ),
        )
    ;
  }
}

