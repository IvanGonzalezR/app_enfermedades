import 'package:flutter/material.dart';

class PantallaNoticiasyArticulos extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias y articulos'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Prueba de segunda pantalla',style: TextStyle(fontSize: 50, color: Colors.black)),
              ]
          )
      ),
    );
  }
}