import 'package:app_enfermedades/tarjetas_enfermedades.dart';
import 'package:flutter/material.dart';

class PantallaEnfermedad extends StatefulWidget {
  String nombreEnfermedad;
  String pathImage;

  PantallaEnfermedad(this.nombreEnfermedad, this.pathImage);
  @override
  _PantallaEnfermedadState createState() => _PantallaEnfermedadState();
}

class _PantallaEnfermedadState extends State<PantallaEnfermedad> {
  ScrollController _scrollController;
  List apartados =[
    {'nombreApartado': 'queEs', 'seleccionado': false},
    {'nombreApartado': 'estadisticas', 'seleccionado': false},
    {'nombreApartado': 'sintomas', 'seleccionado': false},
    {'nombreApartado': 'tratamiento', 'seleccionado': false},
    {'nombreApartado': 'prevencion', 'seleccionado': false},
  ];
  var selectedSlide;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeSelector);
    setState(() {
      selectedSlide = apartados[0];
      selectedSlide['selected'] = true;
    });
  }

  changeSelector() {
    var maxScrollVal = _scrollController.position.maxScrollExtent;

    var divisor = (maxScrollVal / apartados.length) + 20;

    var scrollValue = _scrollController.offset.round();
    var slideValue = (scrollValue / divisor).round();

    var currentSlide = apartados.indexWhere((slide) => slide['selected']);

    setState(() {
      apartados[currentSlide]['selected'] = false;
      selectedSlide = apartados[slideValue];
      selectedSlide['selected'] = true;
    });
  }

  Widget getCards(slide) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, right: 10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, style: BorderStyle.solid, width: 1.0),
        ),
        height: 200.0,
        width: 125.0,
        child: Center(
          child: Text(
            slide['slideName'],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  scrollToSlide(inputSlide) {
    var whichSlide = apartados
        .indexWhere((slide) => slide['slideName'] == inputSlide['slideName']);

    var maxScrollValue = _scrollController.position.maxScrollExtent;

    var divisor = (maxScrollValue / apartados.length) + 20;

    var scrollToValue = whichSlide * divisor;

    _scrollController.animateTo(scrollToValue,
        curve: Curves.easeIn, duration: Duration(milliseconds: 1000));
  }
  
  @override
  Widget build(BuildContext context) {
    
    Widget getTitles(apartados){
      return InkWell(
        onTap: (){
          scrollToSlide(apartados);
        },
        child: Padding(padding: EdgeInsets.only(top:15.0, left: 20.0),
          child: Text(
            apartados['nombreApartado'],
            style: TextStyle(
              fontFamily: "Lato",
              fontWeight: apartados['seleccionado'] ? FontWeight.bold : FontWeight.normal,
              fontSize: 17.0
            ),
          ),
        ),
      );
    }

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
      height: MediaQuery.of(context).size.height/5,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: apartados.map((e) {
          return getTitles(e);
        }).toList(),
      ),
    );


    final cuerpo = Container(
      width: double.infinity,
      child: ListView(
        children: apartados.map((e){
          return getTitles(e);
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
                ],
              ),
              stretchModes: [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
              ],
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            accesosDirectos
          ]))
        ],
      ),
    );
  }
}
