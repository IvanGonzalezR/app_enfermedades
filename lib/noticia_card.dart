import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NoticiaCard extends StatefulWidget {
  final String titulo;
  final String descripcion;
  final String path_image;
  final String fiabilidad;
  final String url;

  NoticiaCard(this.titulo, this.descripcion,
      this.path_image, this.fiabilidad, this.url);

  @override
  _NoticiaCardState createState() => _NoticiaCardState();
}

class _NoticiaCardState extends State<NoticiaCard> {
  String signo_pesos = "24.toString()";
  @override
  Widget build(BuildContext context) {
    final nombre_descripcion = Flexible(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titulo,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Divider(color: Colors.transparent, height: 5.0,),
                Text(
                  widget.descripcion,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.normal,
                      fontSize: 12.0),
                ),
              ],
            ),
          ),
        ],
    ));

    final fiabilidad = Container(
      child: Text(
        "Fiabilidad: "+widget.fiabilidad+"%",
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 18,
        ),
      ),
    );
    
    final btn_rojo = InkWell(
      child: Container(
        width: MediaQuery.of(context).size.height/24,
        height: MediaQuery.of(context).size.height/24,
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/30),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50)
        ),
      ),
    );
    final btn_amarillo = InkWell(
      child: Container(
        width: MediaQuery.of(context).size.height/24,
        height: MediaQuery.of(context).size.height/24,
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/30),
        decoration: BoxDecoration(
            color: Color(0xffFFA300),
            borderRadius: BorderRadius.circular(50)
        ),
      ),
    );
    final btn_verde = InkWell(
      child: Container(
        width: MediaQuery.of(context).size.height/24,
        height: MediaQuery.of(context).size.height/24,
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/30, right: MediaQuery.of(context).size.width/33),
        decoration: BoxDecoration(
            color: Color(0xFF298600),
            borderRadius: BorderRadius.circular(50)
        ),
      ),
    );


    final puntuacion_container = Container(
      width: MediaQuery.of(context).size.width/1.4,
      height: MediaQuery.of(context).size.height/24,
      margin: EdgeInsets.only(bottom: 14.0),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          fiabilidad,
          btn_rojo,
          btn_amarillo,
          btn_verde,
        ],
      ),
    );

    return Flex(
      direction: Axis.vertical,
      children: [
      InkWell(
        onTap: (){
          
        },
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              margin: EdgeInsets.only(bottom: 10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xffefefef)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  nombre_descripcion,
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Image(
                      image: NetworkImage(widget.path_image),
                      height: MediaQuery.of(context).size.width / 4,
                      width: MediaQuery.of(context).size.width / 4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            //FAB
            puntuacion_container,
            // Container(
            //     margin: EdgeInsets.only(
            //         right: MediaQuery.of(context).size.width / 40,
            //         bottom: MediaQuery.of(context).size.width / 40),
            //     child: FabAddCart()),
          ],
        ),
      ),
      ],
    );
  }
}


