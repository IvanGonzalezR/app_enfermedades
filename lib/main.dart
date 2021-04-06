import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//PAra utilizar variables y que guarden sus datos sera necesario crear un stateful widget
void main() =>  runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Equipo 8',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Enfermedades'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("EQUIPO 8",style: TextStyle(fontSize: 50, color: Colors.black)),
              Text('Noticias y articulos',style: TextStyle(fontSize: 40, color: Colors.lightBlue)),
              //en la parte de onPressed se agregara el metodo para ir a la siguiente pagina
              new RaisedButton(color: Colors.blue,textColor: Colors.white,child: Text('Enterate de las ultimas noticias \nsobre la salud',
                  style: TextStyle(fontSize: 20.0)),onPressed: (){}),
              Text('Enfermedades',style: TextStyle(fontSize: 40, color: Colors.lightBlue)),
              new RaisedButton(color: Colors.blue,textColor: Colors.white,child: Text('Obten informacion sobre una\n amplia cantidad de enfermedades',
                  style: TextStyle(fontSize: 20.0)),onPressed: (){}),
            ],
          ),
        ),
        //Boton signo de interrogacion
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          tooltip: 'Informacion sobre nosotros',
          child: Icon(CupertinoIcons.question),
        ),
      )
    );
  }
}