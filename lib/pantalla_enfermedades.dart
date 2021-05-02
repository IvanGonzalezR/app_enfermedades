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

        TarjetasEnfermedades("COVID-19","assets/images/tarjetaCovid.jpg", "La COVID-19 es la enfermedad causada por el nuevo coronavirus conocido como SARS-CoV-2. La OMS tuvo noticia por primera vez de la existencia de este nuevo virus el 31 de diciembre de 2019, al ser informada de un grupo de casos de «neumonía vírica» que se habían declarado en Wuhan (República Popular China)."
        , "Entre las personas que desarrollan síntomas, la mayoría (alrededor del 80%) se recuperan de la enfermedad sin necesidad de recibir tratamiento hospitalario. Alrededor del 15% desarrollan una enfermedad grave y requieren oxígeno y el 5% llegan a un estado crítico y precisan cuidados intensivos.\n"
                "Entre las complicaciones que pueden llevar a la muerte se encuentran la insuficiencia respiratoria, el síndrome de dificultad respiratoria aguda, la septicemia y el choque septicémico, la tromboembolia y/o la insuficiencia multiorgánica, incluidas las lesiones cardíacas, hepáticas y renales.\n"
                "Rara vez, los niños pueden manifestar un síndrome inflamatorio grave unas semanas después de la infección."
            ,'''Los síntomas más habituales de la COVID-19 son:
              Fiebre
              Tos seca
              Cansancio
              
              Otros síntomas menos frecuentes y que pueden afectan a algunos pacientes:
              
              Pérdida del gusto o el olfato
              Congestión nasal
              Conjuntivitis (enrojecimiento ocular)
              Dolor de garganta
              Dolor de cabeza
              Dolores musculares o articulares  
              Diferentes tipos de erupciones cutáneas
              Náuseas o vómitos
              Diarrea
              Escalofríos o vértigo.
              
              Las personas de cualquier edad que tengan fiebre o tos y además respiren con dificultad, sientan dolor u opresión en el pecho o tengan dificultades para hablar o moverse deben solicitar atención médica inmediatamente. De ser posible, llame con antelación a su dispensador de atención de salud al teléfono de asistencia o al centro de salud para que puedan indicarle el dispensario adecuado.
              ''',
            "Si tiene síntomas que apuntan a la COVID-19, póngase en contacto con su dispensador de atención de salud o la línea de asistencia contra la COVID-19, para que le den instrucciones y averiguar cuándo y cómo hacerse una prueba, quédese en casa durante 14 días lejos de otras personas y vigile su salud.\n"
                "Si tiene dificultades para respirar o dolor u opresión en el pecho, busque atención médica inmediatamente. Llame a su dispensador de atención de salud o a la línea de asistencia con antelación para que le dirijan hacia el centro de salud adecuado."
              ,
            "Protéjase adoptando algunas precauciones sencillas, como mantener el distanciamiento físico; utilizar mascarilla, especialmente cuando no se pueda mantener el distanciamiento; mantener las habitaciones bien ventiladas; evitar las aglomeraciones y el contacto estrecho con otras personas; lavarse las manos de forma periódica; y toser cubriéndose con el codo flexionado o con un pañuelo. Consulte las recomendaciones que se den a nivel local en su lugar de residencia y trabajo. ¡Hágalo todo!"
        ),


        TarjetasEnfermedades("Diabetes","assets/images/tarjetaDiabetes.jpg", "que es", "Estadisticas", "Sintomas", "Tratamiento", "Prevencion"),
        TarjetasEnfermedades("Lupus","assets/images/tarjetaLupus.jpg", "que es", "Estadisticas", "Sintomas", "Tratamiento", "Prevencion"),
        TarjetasEnfermedades("Asma","assets/images/tarjetaAsma.jpg","que es", "Estadisticas", "Sintomas", "Tratamiento", "Prevencion"),
        TarjetasEnfermedades("VIH/Sida","assets/images/tarjetaSIDA.jpg", "que es", "Estadisticas", "Sintomas", "Tratamiento", "Prevencion"),
        TarjetasEnfermedades("Poliomelitis","assets/images/tarjetaPolio.jpg", "que es", "Estadisticas", "Sintomas", "Tratamiento", "Prevencion"),
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