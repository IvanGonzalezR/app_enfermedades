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
        TarjetasEnfermedades("Cirrosis","assets/images/tarjetaCirrosis.jpg", "La cirrosis es un conjunto de cicatrices en el hígado. El tejido cicatricial se forma por lesiones o enfermedades prolongadas. Este tejido no puede hacer lo que hace el tejido hepático sano: producir proteínas, ayudar a combatir las infecciones, limpiar la sangre, ayudar a digerir los alimentos y almacenar energía.",
                              '''Se estima que la cirrosis se halla detrás de 800.000 muertes anuales en todo el mundo. En Europa y Estados Unidos tiene una prevalencia de alrededor de 250 casos anuales por cada 100.000 personas. En los varones la prevalencia es dos veces mayor que en las mujeres.''',
                "-Fatiga\n-Aparición de hemorragias o hematomas con facilidad\n-Pérdida de apetito\n-Náuseas\n-Hinchazón de las piernas, los pies o los tobillos (edema)"
                "\n-Pérdida de peso"
                "\n-Picazón en la piel"
                "\n-Decoloración amarilla en la piel y los ojos (ictericia)"
                "\n-Acumulación de líquido en el abdomen (ascitis)"
                "\n-Vasos sanguíneos en forma de arañas en la piel"
                "\n-Enrojecimiento en las palmas de las manos"
                "\n-En las mujeres, ausencia o pérdida de periodos no relacionados con la menopausia"
                "\n-En los hombres, pérdida del deseo sexual, agrandamiento de los senos (ginecomastia) o atrofia testicular"
                "\n-Confusión, somnolencia y dificultad en el habla (encefalopatía hepática)", '''El tratamiento para la cirrosis depende de su causa y de la medida del daño al hígado. Los objetivos del tratamiento son de hacer más lenta la progresión del tejido cicatricial en el hígado y de prevenir o tratar los síntomas y las complicaciones de la cirrosis. Si el daño al hígado es grave, quizás necesites internarte en el hospital.
                 \nEn la etapa temprana de la cirrosis, se puede minimizar el daño hepático si se trata la causa de base. Entre las opciones se incluyen las siguientes:
                 \nTratamiento para la dependencia del alcohol. Las personas que padecen cirrosis provocada por el abuso de alcohol deberían dejar de beber. Si resulta difícil detener el abuso de alcohol, es posible que el médico te recomiende un programa de tratamiento para esa adicción. Si tienes cirrosis, es fundamental que dejes de beber, ya que cualquier cantidad de alcohol es tóxica para el hígado.
                 \nPérdida de peso. Es posible que las personas con cirrosis provocada por la enfermedad de hígado graso de causa no alcohólica se recuperen si pierden peso y controlan sus niveles de azúcar en sangre.
                 \nMedicamentos para controlar la hepatitis. Los medicamentos pueden limitar el avance del daño a las células del hígado causado por la hepatitis B o C a través de un tratamiento específico de estos virus.
                 \nMedicamentos para controlar otras causas y síntomas de la cirrosis. Los medicamentos pueden frenar la evolución de algunos tipos de cirrosis hepática. Por ejemplo, en el caso de las personas que padecen cirrosis biliar primaria diagnosticada en una etapa temprana, los medicamentos pueden retrasar significativamente la evolución de la cirrosis.''',
                '''-No bebas alcohol si tienes cirrosis. Si tienes una enfermedad hepática, debes evitar el alcohol.
                \n-Mantén una alimentación sana. Elige una dieta basada en vegetales, con abundantes frutas y verduras. Selecciona granos integrales y fuentes de proteínas magras. Reduce la cantidad de grasas y comidas fritas.
                \n-Mantén un peso saludable. Una cantidad excesiva de grasas en el cuerpo puede dañar tu estómago. Consulta con tu médico sobre un plan para perder peso si eres obeso o tienes sobrepeso.
                \n-Reduce el riesgo de hepatitis. Compartir agujas y tener relaciones sexuales sin protección puede aumentar el riesgo de hepatitis B y C. Pregúntale a tu médico por las vacunas contra la hepatitis.
                \n-Si estás preocupado por el riesgo de padecer cirrosis hepática, consulta con tu médico sobre las maneras en las que puedes reducir ese riesgo.'''),
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