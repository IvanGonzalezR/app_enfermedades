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
          // NoticiaCard("nombre_producto", "descripcion_producto",
          //     "https://images.unsplash.com/photo-1621966447384-1c397069ed75?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80", "50"),
          // NoticiaCard("nombre_producto", "descripcion_producto",
          //     "https://images.unsplash.com/photo-1621966447384-1c397069ed75?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80", "69"),
          // NoticiaCard("nombre_producto", "descripcion_producto",
          //     "https://images.unsplash.com/photo-1621966447384-1c397069ed75?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80", "30"),
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
