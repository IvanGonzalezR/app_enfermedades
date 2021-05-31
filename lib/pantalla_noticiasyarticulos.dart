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

  Future<List<NoticiaModel>> _getNoticias() async {
    // http://api.mediastack.com/v1/news?access_key=73f6b81fabc3ec26a7ec4b5dba80eb2c&date=2021-05-24
    var data = await http.get(Uri.http('api.mediastack.com', '/v1/news',
        {
          "access_key" : "73f6b81fabc3ec26a7ec4b5dba80eb2c",
          // "keywords" : "salud",
          "date" : "2021-05-21",
          // "countries" : "mx",
          "languages" : "es",
          "limit" : "1",
          // "sort" : "published_desc",
          // "categories" : "health", //science
        }));

    // var data2 = await http.get(Uri.parse("http://api.mediastack.com/v1/news?access_key=73f6b81fabc3ec26a7ec4b5dba80eb2c&date=2021-05-24"));

    var jsonData = json.decode(data.body);

    List<NoticiaModel> noticias = [];

    for (var noticia in jsonData["data"]) {
      NoticiaModel newNoticia = NoticiaModel(noticia["author"], noticia["title"],noticia["description"],noticia["url"],
        noticia["source"],noticia["image"],noticia["category"],noticia["language"],noticia["country"],noticia["published_at"],);
      noticias.add(newNoticia);
    }

    return noticias;
  }

  // var x = _getNoticias();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias y articulos'),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getNoticias(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if (snapshot.data == null) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return NoticiaCard(snapshot.data[index].title, snapshot.data[index].description, snapshot.data[index].image, "50", snapshot.data[index].url);
                },
              );
            }
          },
        ),

      ),

    );
  }
}

//Modelo para la informacion extraida de MediaStack
class NoticiaModel{
  http.Response response;

  String author;
  String title;
  String description;
  String url;
  String source;
  String image;
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
