import 'package:app_enfermedades/pantalla_acerca_de.dart';
import 'package:app_enfermedades/pantalla_enfermedades.dart';
import 'package:app_enfermedades/pantalla_noticias_articulos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("EQUIPO 8",style: TextStyle(fontSize: 50, color: Colors.black)),
          Text('Noticias y articulos',style: TextStyle(fontSize: 40, color: Colors.lightBlue)),
          //en la parte de onPressed se agregara el metodo para ir a la siguiente pagina
          new RaisedButton(color: Colors.blue, textColor: Colors.white,child: Text('Enterate de las ultimas noticias \nsobre la salud',
              style: TextStyle(fontSize: 20.0)),onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>PantallaNoticiasyArticulos()));
          }),
          Text('Enfermedades',style: TextStyle(fontSize: 40, color: Colors.lightBlue)),
          new RaisedButton(color: Colors.blue,textColor: Colors.white,child: Text('Obten informacion sobre una\n amplia cantidad de enfermedades',
              style: TextStyle(fontSize: 20.0)),onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PantallaEnfermedades()));
          }),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('App Enfermedades'),
      ),
      body: content,
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
