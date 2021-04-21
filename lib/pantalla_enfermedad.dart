import 'package:app_enfermedades/tarjetas_enfermedades.dart';
import 'package:flutter/material.dart';

class PantallaEnfermedad extends StatefulWidget {
  String nombreEnfermedad;
  String pathImage;
  String textQueEs;
  String textStats;
  String textSynthoms;
  String texttratamiento;
  String textPrevencion;

  var datos;

  PantallaEnfermedad(this.nombreEnfermedad, this.pathImage, this.textQueEs, this.textStats, this.textSynthoms, this.texttratamiento, this.textPrevencion);
  @override
  _PantallaEnfermedadState createState() => _PantallaEnfermedadState();
}

class _PantallaEnfermedadState extends State<PantallaEnfermedad> {
  ScrollController _scrollController;
  List apartados =[
    {'nombreApartado': '¿Qué es?', 'seleccionado': false, 'id': '0'},
    {'nombreApartado': 'Estadísticas', 'seleccionado': false, 'id': '1'},
    {'nombreApartado': 'Síntomas', 'seleccionado': false, 'id': '2'},
    {'nombreApartado': 'Tratamiento', 'seleccionado': false, 'id': '3'},
    {'nombreApartado': 'Prevención', 'seleccionado': false, 'id': '4'},
  ];
  var selectedSlide;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController(keepScrollOffset: true);
    _scrollController.addListener(changeSelector);
    setState(() {
      selectedSlide = apartados[0];
      selectedSlide['seleccionado'] = true;
    });
  }

  changeSelector() {
    var maxScrollVal = _scrollController.position.maxScrollExtent;
    // _scrollController.initialScrollOffset ==

    var divisor = (maxScrollVal / apartados.length);

    var scrollValue = _scrollController.offset.round();
    var slideValue = (scrollValue / divisor).round();

    var currentSlide = apartados.indexWhere((slide) => slide['seleccionado']);

    setState(() {
      apartados[currentSlide]['seleccionado'] = false;
      selectedSlide = apartados[slideValue];
      selectedSlide['seleccionado'] = true;
    });
  }

  scrollToSlide(inputSlide) {
    int whichSlide = apartados.indexWhere((slide) => slide['nombreApartado'] == inputSlide['nombreApartado']);

    var maxScrollValue = _scrollController.position.maxScrollExtent;

    var divisor = (maxScrollValue / apartados.length)-33;

    var scrollToValue = (whichSlide >=3 ? whichSlide+2 : whichSlide) * divisor;

    _scrollController.animateTo(scrollToValue,
        curve: Curves.easeIn, duration: Duration(milliseconds: 500));
  }

  // CONTENIDO DE LA PANTALLA
  Widget getCards(slide) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),

        // width: 125.0,
        child: Container(
          padding: EdgeInsets.only(bottom: 20.0, left: MediaQuery.of(context).size.width/15, right: MediaQuery.of(context).size.width/15),

          decoration: BoxDecoration(
            color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey[200], blurRadius: 15, spreadRadius: 8)
              ],
              border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: 1.0,
              ),
            ),

          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                // margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  slide['nombreApartado'],
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: MediaQuery.of(context).size.width/20,
                      color: Colors.black,
                      fontFamily: 'Lato'
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  widget.datos[int.parse(slide['id'])],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: MediaQuery.of(context).size.width/29,
                      color: Colors.black,
                      fontFamily: 'Lato'
                  ),
                ),
              ),
            ],

          ),
        ),
    );
  }

  Widget getTitles(slide){
    return InkWell(
      onTap: (){
        scrollToSlide(slide);
      },
      child: Container(
        alignment: Alignment.center,

        padding: EdgeInsets.only( left: 8.0, right: 8.0),
        margin: EdgeInsets.only(right: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/40,
            top: MediaQuery.of(context).size.height/95, bottom: MediaQuery.of(context).size.height/95),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xff459AFF),
        ),

        child: Text(
          slide['nombreApartado'],
          style: TextStyle(
              fontFamily: "Lato",
              fontWeight: slide['seleccionado'] ? FontWeight.bold : FontWeight.normal,
              fontSize: 17.0,
              decoration: slide['seleccionado'] ? TextDecoration.underline : TextDecoration.none,
              fontStyle: slide['seleccionado'] ? FontStyle.italic : FontStyle.normal,
              color: Colors.white
          ),
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {

    widget.datos = [widget.textQueEs, widget.textStats, widget.textSynthoms, widget.texttratamiento, widget.textPrevencion];

    final image = Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(0.0),
          decoration: BoxDecoration(color: Colors.red),
          child: Image(
            image: AssetImage(widget.pathImage),
            fit: BoxFit.cover,
          ),
        ),

        //Flecha de regreso
        // ArrowBack(XDRestaurants(), false, false),
      ],
    );

    final accesosDirectos = Container(
      height: MediaQuery.of(context).size.height/15,
      width: MediaQuery.of(context).size.width,
      // color: Color(0xff459AFF),
      child: ListView(
        scrollDirection: Axis.horizontal,
        // physics: BouncingScrollPhysics(),
        children: apartados.map((e) {
          return getTitles(e);
        }).toList(),
      ),
    );


    final cuerpo = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/2.7),
      child: ListView(
        shrinkWrap: false,
        physics: ClampingScrollPhysics(),
        controller: _scrollController,
        children: apartados.map((e){
          return getCards(e);
        }).toList(),
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0xffefefef),
      body: CustomScrollView(
        // physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff459AFF),
            // stretch: false,
            expandedHeight: MediaQuery.of(context).size.height/4.1,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.white),
            pinned: true,
            // title: Text("Enfermedades", style: TextStyle(
            //     fontFamily: "Lato",
            //     fontSize: 22.0,
            //     fontWeight: FontWeight.w400,
            //     color: Colors.white
            // ),),

            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(widget.nombreEnfermedad,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  image,
                  // accesosDirectos
                ],
              ),
              stretchModes: [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
              ],
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            accesosDirectos,
            Container(
                child: cuerpo
            )
          ]))
        ],
      ),
    );
  }
}
