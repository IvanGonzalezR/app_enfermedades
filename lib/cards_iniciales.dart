import 'package:app_enfermedades/pantalla_enfermedades.dart';
import 'package:app_enfermedades/pantalla_noticiasyarticulos.dart';
import 'package:flutter/material.dart';

class CardsIniciales extends StatefulWidget {
  final String texto;
  final String path_image;
  final int index;

  CardsIniciales(this.texto, this.path_image, this.index);
  @override
  _CardsInicialesState createState() => _CardsInicialesState();
}

class _CardsInicialesState extends State<CardsIniciales> {

  String path_image = "assets/images/covidInicial.jpg";

  @override
  Widget build(BuildContext context) {

    final nombre_descripcion = Flexible(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.texto,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ],
    )
    );

    return InkWell(
      onTap: (){
        if(widget.index == 1){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>PantallaNoticiasArticulos()));
        }else{
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>PantallaEnfermedades()));
        }
      },
      splashColor: Color(0xff81bbff),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: MediaQuery.of(context).size.height/5,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 15.0, right: 15.0),
            decoration: BoxDecoration(
                color: Color(0xff459AFF),
                borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(3,5),
                  blurRadius: 15,
                  spreadRadius: 2
                ),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5,-5),
                    blurRadius: 15,
                    spreadRadius: 2
                )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                nombre_descripcion,
                Container(
                  margin: EdgeInsets.only(left: 8.0),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                  child: Image(image: AssetImage(widget.path_image),
                      // height: MediaQuery.of(context).size.width/4,

                      width: MediaQuery.of(context).size.width/2,
                      fit: BoxFit.fill),
                  ),
              ],
            ),
          ),
          //FAB
        ],
      ),
    );
  }
}
