import 'package:app_enfermedades/tarjetas_enfermedades.dart';
import 'package:flutter/material.dart';

class PantallaEnfermedades extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final gridTarjetas = GridView.count(
        crossAxisCount: 2,
      crossAxisSpacing: MediaQuery.of(context).size.width/15,
      mainAxisSpacing: MediaQuery.of(context).size.width/25,
      shrinkWrap: true,
      childAspectRatio: (1/1.3),
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/15, right: MediaQuery.of(context).size.width/15,
          top: MediaQuery.of(context).size.height/24, bottom: MediaQuery.of(context).size.height/24),
      children: [
        TarjetasEnfermedades("assets/images/tarjetaCovid.jpg", "COVID-19"),
        TarjetasEnfermedades("assets/images/tarjetaDiabetes.jpg", "Diabetes"),
        TarjetasEnfermedades("assets/images/tarjetaLupus.jpg", "Lupus"),
        TarjetasEnfermedades("assets/images/tarjetaAsma.jpg","Asma"),
        TarjetasEnfermedades("assets/images/tarjetaSIDA.jpg", "VIH/Sida"),
        TarjetasEnfermedades("assets/images/tarjetaPolio.jpg", "Poliomelitis"),
        // TarjetasEnfermedades("assets/images/"),
        // TarjetasEnfermedades("assets/images/"),
      ],
    );

    return Scaffold(
      backgroundColor: const Color(0xffefefef),
      body: CustomScrollView(
        // physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff459AFF),
            // stretch: false,
            expandedHeight: MediaQuery.of(context).size.height/12.5,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.white),
            pinned: true,
            title: Text("Enfermedades", style: TextStyle(
                fontFamily: "Lato",
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
              color: Colors.white
            ),),
            // flexibleSpace: FlexibleSpaceBar(
            //   centerTitle: true,
            //   background: Stack(
            //     fit: StackFit.expand,
            //     children: [
            //       image,
            //     ],
            //   ),
            //   stretchModes: [
            //     StretchMode.blurBackground,
            //     StretchMode.zoomBackground,
            //   ],
            // ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            gridTarjetas,
          ]))
        ],
      ),
    );
  }
}