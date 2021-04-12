import 'package:flutter/material.dart';

class PantallaEnfermedades extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enfermedades'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Prueba de tercera pantalla',style: TextStyle(fontSize: 50, color: Colors.black)),
              ]
          )
      ),
    );
  }
}