import 'dart:convert';

import 'package:app_enfermedades/noticia_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PantallaNoticiasArticulos extends StatefulWidget {
  const PantallaNoticiasArticulos({Key key}) : super(key: key);

  @override
  _PantallaNoticiasArticulosState createState() => _PantallaNoticiasArticulosState();
}

class _PantallaNoticiasArticulosState extends State<PantallaNoticiasArticulos> {

  String dato1 = "";
  String dato2 = "";
  String dato3 = "";
  String dato4 = "";
  String dato5 = "";

  @override
  Widget build(BuildContext context) {

    Future<List<NoticiaModel>> _getNoticias() async {
      // http://api.mediastack.com/v1/news?access_key=73f6b81fabc3ec26a7ec4b5dba80eb2c&date=2021-05-24
      var data = await http.get(Uri.http('api.mediastack.com', '/v1/news',
          {
            "access_key" : "73f6b81fabc3ec26a7ec4b5dba80eb2c",
            // "keywords" : "salud",
            "date" : "2021-05-24",
            // "countries" : "mx",
            "languages" : "es",
            "limit" : "4",
            "sort" : "published_desc",
            "categories" : "health", //science
          }));

      // var data2 = await http.get(Uri.parse("http://api.mediastack.com/v1/news?access_key=73f6b81fabc3ec26a7ec4b5dba80eb2c&date=2021-05-24"));

      var jsonData = json.decode(data.body);

      List<NoticiaModel> noticias = [];

      for (var noticia in jsonData["data"]) {
        NoticiaModel newNoticia = NoticiaModel(noticia["author"], noticia["title"],noticia["description"],noticia["url"],
          noticia["source"],noticia["image"],noticia["category"],noticia["language"],noticia["country"],noticia["published_at"],);
        noticias.add(newNoticia);
      }

      // setState(() {
      //
      //   // dato1 = noticias[0].author.toString();
      //   // dato1 = noticias[0].author.toString();
      //   // dato2 = noticias[0].title.toString();
      //   // dato3 = noticias[0].description.toString();
      //   // dato4 = noticias[0].url.toString();
      //   // dato5 = noticias[0].country.toString();
      // });

      return noticias;
    }

    var noticias = _getNoticias();

    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias y articulos'),
      ),
      body: ListView(
        children: [
          NoticiaCard("La OMS y Suiza ponen en funcionamiento un BioHub mundial dedicado al almacenamiento, intercambio y análisis de patógenos",
              "La Organización Mundial de la Salud (OMS) y la Confederación Suiza han firmado hoy un memorando de entendimiento para poner en funcionamiento el primer repositorio del BioHub de la OMS",
              "https://images.unsplash.com/photo-1542736667-069246bdbc6d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGhlYWx0aHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "50"),
          NoticiaCard("La Asamblea Mundial de la Salud se centrará en el fin de la pandemia de COVID-19 y en la preparación para la siguiente pandemia",
              "En un año en el que la COVID-19 amenaza la salud y el bienestar de todos los habitantes del planeta, la 74.ª Asamblea Mundial de la Salud hará hincapié en la urgencia de poner fin a la actual pandemia y prevenir la próxima construyendo un mundo más sano, más seguro y más justo.",
              "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWVkaWNpbmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "69"),
          NoticiaCard("La OMS y Suiza ponen en funcionamiento un BioHub mundial dedicado al almacenamiento, intercambio y análisis de patógenos",
              "La Organización Mundial de la Salud (OMS) y la Confederación Suiza han firmado hoy un memorando de entendimiento para poner en funcionamiento el primer repositorio del BioHub de la OMS",
              "https://images.unsplash.com/photo-1542736667-069246bdbc6d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGhlYWx0aHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "50"),
          NoticiaCard("La Asamblea Mundial de la Salud se centrará en el fin de la pandemia de COVID-19 ",
              "En un año en el que la COVID-19 amenaza la salud y el bienestar de todos los habitantes del planeta",
              "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWVkaWNpbmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "69"),

        ],
      ),
    );
  }
}

class NoticiaModel{
  http.Response response;

  String author;
  String title;
  String description;
  String url;
  String source;
  dynamic image;
  String category;
  String language;
  String country;
  String published_at;

  NoticiaModel(
      this.author,
      this.title,
      this.description,
      this.url,
      this.source,
      this.image,
      this.category,
      this.language,
      this.country,
      this.published_at);
}
