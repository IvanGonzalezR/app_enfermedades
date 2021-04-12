import 'package:flutter/material.dart';

class PantallaAcercaDe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('App creada con flutter por el equipo 8',style: TextStyle(fontSize: 50, color: Colors.black)),
              ]
          )
      ),
    );
  }
}