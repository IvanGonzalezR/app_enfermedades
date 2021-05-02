import 'package:app_enfermedades/cards_iniciales.dart';
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
          Text('Noticias y articulos',style: TextStyle(fontSize: 40, color: Color(0xff459AFF))),
          //en la parte de onPressed se agregara el metodo para ir a la siguiente pagina
          new RaisedButton(color: Colors.blue, textColor: Colors.white,child: Text('Enterate de las ultimas noticias \nsobre la salud',
              style: TextStyle(fontSize: 20.0)),onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) =>PantallaNoticiasyArticulos()));
          }),
          Text('Enfermedades',style: TextStyle(fontSize: 40, color: Color(0xff459AFF))),
          new RaisedButton(color: Colors.blue,textColor: Colors.white,child: Text('Obten informacion sobre una\n amplia cantidad de enfermedades',
              style: TextStyle(fontSize: 20.0)),onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => PantallaEnfermedades()));
          }),
        ],
      ),
    );



    return Scaffold(
      backgroundColor: const Color(0xffefefef),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff459AFF),
            stretch: true,
            elevation: 1.0,
            forceElevated: true,
            expandedHeight: MediaQuery.of(context).size.height/17 ,
            centerTitle: true,
            title: Text("Sicklopedia App",textAlign: TextAlign.center, style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
                color: Colors.white
            ),),
            // flexibleSpace:
          ),
          SliverList(delegate: SliverChildListDelegate([
            Divider(height: MediaQuery.of(context).size.height/10, color: Colors.transparent,),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Noticias y Artículos",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: MediaQuery.of(context).size.width/14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2a60a0)
                ),
              ),
            ),
            CardsIniciales("Enterate de las últimas noticias sobre Covid-19 y mucho más!!", "assets/images/covidInicial.jpg", 1),
            Divider(height: MediaQuery.of(context).size.height/15, color: Colors.transparent),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Enfermedades",
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: MediaQuery.of(context).size.width/14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2a60a0)
                ),
              ),
            ),
            CardsIniciales("Obten información sobre una amplia cantidad de enfermedades", "assets/images/enfermedadesInicial.jpg", 2),
          ]))
        ],
      ),
    );
  }
}
