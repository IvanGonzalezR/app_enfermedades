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
        TarjetasEnfermedades("Fiebre","assets/images/tarjetaFiebre.jpg", '''La fiebre es una temperatura del cuerpo más elevada de lo normal. Una temperatura normal puede variar de persona a persona, pero generalmente es alrededor de 98.6 ºF o 37 ºC. La fiebre no es una enfermedad. Por lo general, es una señal de que su cuerpo está tratando de combatir una enfermedad o infección.
                \nLas infecciones causan la mayoría de las fiebres. Tiene fiebre porque su cuerpo está tratando de matar el virus o las bacterias que causaron la infección. La mayoría de estas bacterias y virus sobreviven bien cuando su cuerpo está a su temperatura normal. Pero si tiene fiebre, es más difícil para ellos sobrevivir. La fiebre también activa el sistema inmunitario de su cuerpo.''',
                    '''En el 2017, se notificaron 14 364 casos de fiebre del valle a los CDC. La mayoría de los casos fueron en personas que vivían en Arizona o California. Las tasas más altas de fiebre del valle generalmente son las de las personas de 60 años y mayores.
                La cantidad de casos notificados a los CDC podría ser una subestimación del número real porque es probable que ocurran decenas de miles de casos más que no son diagnosticados correctamente debido a no se les hacen las pruebas de detección a muchos de los pacientes. En las áreas altamente endémicas, como las áreas metropolitanas de Phoenix y Tucson en Arizona, se estima que la fiebre del valle causa entre el 15 y casi el 30 % de los casos de neumonía extrahospitalarios; sin embargo, las bajas tasas de pruebas de detección parecen indicar que no se reconocen suficientemente los casos de esta enfermedad''',
                '''Un niño tiene fiebre cuando su temperatura está en o por encima de estos niveles:\n
                100.4°F (38°C) medida en las nalgas (rectal)
                99.5°F (37.5°C) medida en la boca (oral)
                99°F (37.2°C) medida bajo el brazo (axilar)
                \nUn adulto probablemente tiene fiebre cuando la temperatura está por encima de 99°F a 99.5°F (37.2°C a 37.5°C), según la hora del día.
                \nLlama al médico de urgencia si tu hijo tiene fiebre después de haber estado en un auto caliente o si pasó por alguna otra situación potencialmente peligrosa y muestra alguna de estas señales de advertencia:       
                Fiebre sin sudor
                Dolor de cabeza intenso
                Convulsiones
                Rigidez en el cuello
                Desorientación
                Vómitos o diarrea repetitivos
                Irritabilidad o incomodidad significativas
                Cualquier síntoma preocupante, diferente o inusual''',
            '''El tratamiento depende de la causa de la fiebre. Si la fiebre es muy alta, su profesional de la salud puede recomendarle tomar medicinas de venta libre como el acetaminofén o el ibuprofén. Los adultos también pueden tomar aspirina, pero los niños con fiebre no deben tomar aspirina. También es importante beber suficientes líquidos para prevenir la deshidratación.''',
            '''La fiebre es un aumento de la temperatura corporal. Por lo general, es un signo de infección. La fiebre en sí misma generalmente es inofensiva y probablemente útil.'''),
        TarjetasEnfermedades("Bronquitis","assets/images/tarjetaBronquitis.jpg",
            '''La bronquitis es la inflamación de los conductos bronquiales, las vías respiratorias que llevan oxígeno a sus pulmones. Esta causa una tos que en forma frecuente presenta mucosidad. También causa dificultad para respirar, jadeo y presión en el pecho. Existen dos tipos de bronquitis: aguda y crónica.''',
            '''Con mayor taza de mortalidad que la aguda, la bronquitis crónica, como hipersecresión bronquial crónica es un proceso frecuente que afecta entre el 10 y el 15 % de la población adulta, incrementándose a 40-60 % en los mayores de 40 años fumadores de más de 20 cigarrillos al día.''',
            '''El síntoma más común de la bronquitis es la tos asociada con la producción de moco.\nOtros síntomas incluyen sonido tipo silbido al respirar, falta de aire, dolor de pecho o fiebre baja.\nPara diagnosticar la bronquitis, su médico hará un examen físico, y le preguntará acerca de su historia clínica y síntomas.\nEl médico también puede solicitar un análisis de sangre para detectar signos de infección o una radiografía de tórax para ver si los pulmones y los tubos bronquiales se ven normales y descartar la neumonía.''',
            '''Dado que la mayoría de los casos de bronquitis son causados por infecciones virales, los antibióticos no resultan eficaces. Sin embargo, si el médico sospecha que tienes una infección bacteriana, es posible que te recete un antibiótico.

En algunos casos, el médico puede recomendarte otros medicamentos, entre los que se incluyen los siguientes:

Medicamento para la tos. Si la tos no te deja dormir, puedes probar con inhibidores de la tos a la hora de dormir.
Otros medicamentos. Si tienes alergias, asma o enfermedad pulmonar obstructiva crónica (EPOC), el médico puede recomendarte un inhalador y otros medicamentos para disminuir la inflamación y abrir las vías estrechadas de tus pulmones.
\nSi tienes bronquitis crónica, la rehabilitación pulmonar puede ayudarte con un programa de ejercicios respiratorios en el que un terapeuta de la respiración te enseña a respirar con más facilidad y a aumentar tu capacidad para hacer ejercicio.''',
            '''Evita el humo del cigarrillo. Este aumenta el riesgo de padecer bronquitis crónica.
Vacúnate. Muchos casos de bronquitis aguda se producen a causa del virus de la influenza. Si te aplicas la vacuna contra la influenza todos los años, puedes protegerte contra esta afección. También puedes considerar la posibilidad de vacunarte contra algunos tipos de neumonía.
Lávate las manos. Para reducir el riesgo de contraer una infección viral, lávate las manos con frecuencia y acostúmbrate a usar desinfectantes para manos a base de alcohol.
Usa mascarilla quirúrgica. Si tienes una enfermedad pulmonar obstructiva crónica, puedes considerar la posibilidad de usar una mascarilla en el trabajo si estás expuesto al polvo o a vapores, y cuando estés en contacto con mucha gente, como mientras viajas.'''),
        TarjetasEnfermedades("Ebola","assets/images/tarjetaEbola.jpg",
            '''La fiebre hemorrágica del Ebola es causada por un virus. Es una enfermedad grave y muchas veces fatal. Puede afectar a humanos y a otros primates. Los investigadores creen que los humanos la contraen a través de un animal infectado. Puede contagiarse de persona a persona por medio de sangre o secreciones.''',
            '''Los brotes de enfermedad por el virus del Ebola (EVE) tienen una tasa de letalidad que es de aproximadamente 50%. En brotes anteriores, las tasas fueron de 25% a 90%. La participación de la comunidad es fundamental para el éxito del control de los brotes''',
            '''Los síntomas pueden aparecer entre los dos y los 21 días luego de la exposición al virus. En general, incluyen:\nFiebre\nDolor de cabeza\nDolor en los músculos y articulaciones\nDebilidad\nDiarrea\Vómitos\nDolor abdominal\nFalta de apetito''',
            '''Actualmente, no existe ningún medicamento para tratar la EVE. Se están probando algunos medicamentos experimentales.\nEl objetivo principal del tratamiento es controlar sus síntomas. Las opciones pueden incluir:
            \nConsumir líquidos para prevenir la deshidratación\nRegular y reemplazar las sales y otros químicos en el cuerpo\nMantener la presión arterial\nTomar medicamentos para aliviar la fiebre, la diarrea, las náuseas y el dolor\nObtener oxígeno\nTratar otras infecciones''',
                          '''Evite viajar a áreas donde se hayan producido brotes conocidos de EVE.
              No toque la sangre o los fluidos corporales de una persona que pueda estar infectada con el virus.
              No toque el cuerpo de una persona que haya muerto por EVE.
              No toque elementos que puedan estar contaminados con el virus.'''),
        TarjetasEnfermedades("Leucemia","assets/images/tarjetaLeucemia.jpg",
            '''La leucemia es un cáncer de los glóbulos blancos. Los glóbulos blancos ayudan a su organismo a combatir las infecciones. Las células sanguíneas se forman en la médula ósea. Sin embargo, en la leucemia la médula ósea produce glóbulos blancos anormales. Estas células reemplazan a las células sanguíneas sanas y dificultan que la sangre cumpla su función.
            \nHay diversos tipos de leucemia, incluyendo:
              Leucemia linfocítica aguda
              Leucemia mielógena aguda
              Leucemia linfocítica crónica
              Leucemia mielógena crónica''',
            '''Se estima que en México se presentan entre cinco y seis mil casos nuevos al año de cáncer en menores de 18 años, entre los que destacan las leucemias, que representan el 50 por ciento del total; linfomas el 15%, seguido de tumores del sistema nervioso central con el 10%, afirmó el jefe del servicio de oncología''',
            '''Fatiga\nDebilidad\nPalidez\nMoretones que se forman fácilmente o sangrado que no se detiene con facilidad\nPérdida de peso\nFiebre\nDolor en los huesos, la espalda o abdominal\nDificultad para respirar y/o falta de aire''',
            '''El tratamiento para la leucemia depende de muchos factores. El médico determina tus opciones de tratamiento para la leucemia en función de tu edad y tu salud general, del tipo de leucemia que padezcas y de si esta se ha extendido a otras partes del cuerpo, incluido el sistema nervioso central.Los tratamientos frecuentes que se usan para combatir la leucemia son:\n
\n-Quimioterapia. La quimioterapia es la principal forma de tratamiento para la leucemia. Este tratamiento con medicamentos usa sustancias químicas para matar las células de leucemia.
\n-Según el tipo que padezcas, es posible que recibas un único medicamento o una combinación de varios. Estos pueden venir en forma de pastilla o pueden inyectarse directamente en una vena.
\n-Terapia dirigida. Los tratamientos con fármacos con diana específica se enfocan en anomalías específicas presentes dentro de las células cancerosas. Al bloquear estas anomalías, los tratamientos con fármacos con diana específica pueden producir la muerte de las células cancerosas. Se analizarán tus células leucémicas para ver qué terapia dirigida podría ser útil para ti.
\n-Radioterapia. La radioterapia usa rayos X u otros haces de alta energía para dañar las células de leucemia y detener su crecimiento. Durante la radioterapia, te recuestas sobre una camilla mientras una máquina grande se mueve a tu alrededor y dirige la radiación a puntos específicos del cuerpo.Puedes recibir radiación en una zona específica del cuerpo donde haya una acumulación de células de leucemia, o puedes recibir radiación en todo el cuerpo. La radioterapia se puede usar para prepararse para un trasplante de médula ósea.
\n-Trasplante de médula ósea. Un trasplante de médula ósea, también llamado trasplante de célula madre, ayuda a restablecer las células madre sanas al reemplazar la médula ósea enferma con células madre libres de leucemia que regenerarán la médula ósea sana.Antes de un trasplante de médula ósea, recibirás dosis muy altas de quimioterapia o radioterapia para destruir la médula ósea que produce leucemia. Luego, recibirás una infusión de células madre formadoras de sangre que ayudan a reconstruir la médula ósea.
\n-Puedes recibir células madre de un donante o se pueden usar tus propias células madre.
\n-Inmunoterapia. La inmunoterapia utiliza el sistema inmunitario para combatir el cáncer. El sistema inmunitario que lucha contra las enfermedades de tu cuerpo puede no atacar el cáncer porque las células cancerosas producen proteínas que las ayudan a esconderse de las células del sistema inmunitario. La inmunoterapia funciona porque interfiere en ese proceso.
\n-Ingeniería de células inmunes para combatir la leucemia. Un tratamiento especializado llamado terapia con linfocitos T con receptor quimérico para el antígeno (CAR) toma las células T que combaten los gérmenes de tu cuerpo, las diseña para combatir el cáncer y las infunde de nuevo en tu cuerpo. Esta terapia puede ser una opción para ciertos tipos de leucemia.''',
            '''No existe una manera conocida de prevenir la mayoría de los casos de leucemia mieloide crónica. Muchos tipos de cáncer se pueden prevenir haciendo cambios en el estilo de vida para evitar ciertos factores de riesgo, pero esto no es así para la mayoría de los casos de leucemia mieloide crónica.'''),
        TarjetasEnfermedades("Ojo seco","assets/images/tarjetaOjoseco.jpg",
            '''El ojo seco es una enfermedad multifactorial, compleja y crónica que afecta a la superficie ocular y que produce molestias, problemas visuales y, en algunos casos, lesiones en la córnea y la conjuntiva. Por tanto, y a pesar de que su nombre pueda llevar a equívoco, consiste en mucho más que, simplemente, “no tener lágrima”. ''',
            '''Se trata de un síndrome crónico, que afecta a cerca del 30% de la población, y que requiere un diagnóstico y tratamiento personalizados. Existen varias causas y tipos de ojo seco en función de los cuales varia el grado de severidad y la estrategia terapéutica para obtener los mejores resultados en cada paciente.''',
            '''Siente picazón y ardor en los ojos.\nTiene sensación de algo que raspa o arenilla dentro del ojo.\nTienes visión borrosa, especialmente al leer\nHay líneas de moco en el interior o alrededor de los ojos.\nTiene los ojos rojos o irritados. Esto pasa especialmente cuando está en un lugar con viento o cerca de humo de cigarrillos.\nUsar lentes de contacto le genera dolor.\nTiene muchas lágrimas.''',
            '''El oftalmólogo puede pedirle que use lágrimas artificiales. Son gotas para los ojos similares a sus propias lágrimas. Puede usar lágrimas artificiales todas las veces que las necesite. Puede comprar lágrimas artificiales sin una receta. Hay de muchas marcas. Pruebe varias hasta que encuentre la que funcione mejor para usted.\nSi usted usa lágrimas artificiales más de seis veces al día o es alérgico(a) a los conservantes, debe usar lágrimas libres de conservantes. Esto es debido al uso frecuente de lágrimas con conservantes, cuyos componentes químicos pueden activar una irritación de los ojos.''',
            '''Reducir el tiempo de la pantalla y tomar pausas periódicas para los ojos, puede ayudar. Cerrar los ojos durante unos minutos o parpadear repetidamente durante unos segundos, puede reponer las lágrimas basales y extenderlas de manera más uniforme sobre el ojo.\nLas gafas de sol de calidad, que se envuelven alrededor de la cara y tienen protectores laterales que bloquean el viento y el aire seco, pueden reducir los síntomas en condiciones ventosas o secas.\nEn casos de disfunción de la glándula de Meibomio, las compresas y exfoliaciones tibias, pueden ser útiles.\n
También puede ayudar dejar de fumar y limitar la exposición al humo de segunda mano.\nRetirar el maquillaje de los ojos completamente.\nLimpiar los párpados.'''),
        TarjetasEnfermedades("Tos","assets/images/tarjetaTos.jpg",
            '''La tos es un reflejo que mantiene despejada la garganta y las vías respiratorias. Aunque puede ser molesta, la tos ayuda al cuerpo a curarse o protegerse. La tos puede ser aguda o crónica. La tos aguda comienza súbitamente y no suele durar más de 2 o 3 semanas. Los cuadros agudos de tos son los que se adquieren frecuentemente con un resfrío, una gripe o bronquitis aguda. La tos crónica dura más de 2 o 3 semanas.''',
            "Sin informacion, una tos ocasional es normal y saludable, consulte a su medico si se vuelve persistente", "Las causas de la tos crónica incluyen:\nBronquitis cronica\nAsma\nAlergias\nEPOC\nFumar\nEnfermedades de la garganta",
            '''El agua puede ayudar a mejorar la tos - ya sea que la ingiera o que la agregue al ambiente con un inyector de vapor o un vaporizador. Si tiene un refrío o la gripe, los antihistamínicos pueden dar mejores resultados que los medicamentos para la tos sin receta médica. Niños menores de 4 años no deben recibir medicamentos para la tos. Para niños mayores de 4 años, sea precavido y lea cuidadosamente las indicaciones.''',
            '''Llevar una vida sana, dormir lo suficiente, evitar el alcohol o tabaco\nEvitar el aire muy seco\nNo tocar la cara con las manos sucias, pueden estar contaminadas de un virus comun de gripe\nLavar las manos frecuentemente'''),
        TarjetasEnfermedades("Depresion","assets/images/tarjetaDepresion.jpg",
            '''La depresión es un trastorno del cerebro. Existen muchas causas, incluyendo factores genéticos, biológicos, ambientales y psicológicos. La depresión puede comenzar a cualquier edad, pero suele empezar en la juventud o en adultos jóvenes. Es mucho más común en las mujeres. Las mujeres también pueden tener depresión posparto después de dar a luz. Algunas personas tienen un trastorno afectivo estacional en el invierno. La depresión es una parte del trastorno bipolar.''',
            '''Se calcula que afecta a más de 300 millones de personas en el mundo. La depresión es la principal causa mundial de discapacidad y contribuye de forma muy importante a la carga mundial general de morbilidad. La depresión afecta más a la mujer que al hombre. En el peor de los casos, la depresión puede llevar al suicidio.\n-World healt organization''',
            '''Sintomas emocionales:\nLlorar facilmente o sin ninguna razon\nSentirse culpable o inutil\nSentirse triste o desesperado\nPerdidad del interes en actividades
que solia disfrutar\nPensar en la muerte o suicidio\n\nSintomas Fisicos:\nCambios en el apetito\nSensacion de cansancio\nDolores de cabeza\nDormir demasiado\nPerdida o ganancia involuntaria de peso''',
            '''Debe hablar con su médico acerca de sus síntomas. No crea que su médico será capaz de adivinar que usted está deprimido tan solo con verlo. Usted puede sentirse avergonzado. Puede ser difícil para usted imaginar que el tratamiento realmente lo ayudará a sentirse mejor. Pero no espere para hablar con su médico. Cuanto antes busque tratamiento, antes se recuperará de la depresión.\n\nLa depresión se puede tratar con medicamentos, con orientación o con ambos. Una dieta nutritiva, hacer ejercicio regularmente y evitar el alcohol, las drogas y demasiada cafeína también puede ayudar''',
            '''Generalmente, la depresión es una afección que no se puede prevenir. Ciertos cambios en su estilo de vida pueden mejorar su estado de ánimo y minimizar los síntomas de la depresión.'''),
        TarjetasEnfermedades("Callos","assets/images/tarjetaCallos.jpg",
            '''Los callos y callosidades son causados por presión o fricción en la piel. A menudo aparecen en el pie donde el hueso roza con el calzado. Los callos, generalmente, aparecen arriba o a los costados del pie mientras que las callosidades aparecen en las plantas del pie. También pueden aparecer en las manos u otras áreas donde haya fricción o presión.''',
            '''En torno a un 40% de las mujeres sufre de juanetes, un 37% de los hombres y mujeres tienen callos. ''',
            '''Capas duras de piel en areas donde existe friccion''',
            '''A menudo, el tratamiento para los callos y las callosidades supone evitar las acciones repetitivas que causaron su aparición. Puedes ayudar a solucionarlos usando zapatos que calcen de manera adecuada, utilizando plantillas protectoras y tomando otras medidas de cuidado personal
En caso de ser necesario se recortara el exceso de piel, y asignaran medicamentos para quitarlos''',
            '''Usa plantillas de venta libre\nRemoja las manos o pies para ablandar la piel y evitar callosidades\nHumectar la piel\nUtilizar zapatos y calcetines comodos'''),
        TarjetasEnfermedades("Gastritis","assets/images/tarjetaGastritis.jpg",
            '''La gastritis es un término general para un grupo de enfermedades con un punto en común: la inflamación del revestimiento del estómago''',
            '''Según datos del Instituto Mexicano del Seguro Social (IMSS), la gastritis afecta a 70% de los mexicanos y es más propensa en mujeres que en hombres, además se presenta con más frecuencia de los 20 a los 54 años de edad.''',
            '''Dolor o ardor en la parte superior del abdomen\nNáuses\nVómito\nSensacion de saciedad en la parte superio del abdomen luego de comer\n\n**La gastritis no siempre provoca sintomas**''',
            '''Medicamentos antibioticos para eliminar bacterias\nMedicamentos que bloquean la produccion de acido\nAntiacidos que neutralizan el acido estomacal''',
            '''Para la infeccion por H.pylori\n\nNo está claro cómo se propaga el H. pylori, pero hay ciertos indicios de que se puede transmitir de persona a persona o a través de comida y agua contaminadas. Puedes tomar medidas para protegerte de infecciones, como el H. pylori, lavándote frecuentemente las manos con agua y jabón y comiendo alimentos que estén completamente cocidos'''),
        TarjetasEnfermedades("Encefalitis","assets/images/tarjetaEncefalitis.jpg",
            '''La encefalitis es la inflamación del cerebro. Existen varias causas, pero la más común es una infección viral''',
            "Sin informacion",
            '''En general, la encefalitis solo causa signos y síntomas parecidos a los de la gripe, como fiebre o dolor de cabeza, o bien no causa ningún síntoma. A veces, los síntomas parecidos a los de la gripe son más graves. La encefalitis también puede causar confusión, convulsiones o problemas sensoriales o motrices, como problemas de vista o de audición.''',
            '''El tratamiento para la encefalitis leve incluye:\nReposo en cama\nAbundantes liquidos\nAnti-inflamatorios\nPara un caso mas grave consulta a tu medico''',
            '''Tener buenos habitos de higiene\nNo compartir utensilios\nVacunate'''),
        TarjetasEnfermedades("Ictus","assets/images/tarjetaIctus.jpg",
            '''El ictus es una enfermedad cerebrovascular que afecta a los vasos sanguíneos que suministran sangre al cerebro. También se le conoce como accidente cerebrovascular (ACV), embolia o trombosis.''',
            '''Según los datos disponibles, la incidencia anual de ictus es de 187,4 casos por cada 100.000 habitantes, lo que supone un total de 71.780 nuevos casos considerando la población española de 18 años o más a 1 de enero de 2018 (38.308.693 personas)\nSociedad española de neurologia''',
            '''Adormecimiento o debilidad repentina en la cara, el brazo o una pierna, especialmente en uno de los lados del cuerpo\nConfusión repentina, dificultad para hablar o para entender\nRepentina dificultad para andar, mareo, pérdida de equilibrio o coordinación
\nProblemas repentinos para ver en uno o los dos ojos\nAsimetría facial\nPueden presentarse otros sintomas dependiendo del lado afectado del cerebro''',
            '''El tratamiento es distinto si el ictus es debido al bloqueo de un arteria o a causa de la ruptura de un vaso En todo caso, hay algunos pasos que hay que seguir para mejorar la supervivencia\nConsulte a su medico''',
            '''LLevar una dieta saludable\nRealizar ejercicio de forma habitual\nNo fumar\nModerar el consumo de alcohol'''),
        TarjetasEnfermedades("Varicela","assets/images/tarjetaVaricela.jpg",
            '''La varicela es una infección viral muy contagiosa provocada por el virus varicela zoster (VVZ). Se caracteriza por una erupción vesicular en forma de manchas y ampollas que producen picazón. Esta enfermedad es común entre la población infantil, aunque tiene una variante propia de los adultos, el herpes zoster, que resulta más seria y consiste en la reactivación posterior del virus.''',
            ''' El 88,1% de los casos de varicela se da en personas menores de 15 años. En el CMBD se registró un promedio anual de 1.311 ingresos. No se observaron cambios significativos en la distribución por edad, sexo ni complicaciones durante los ingresos en ninguno de los períodos estudiados. El 32-36% anual ingresó por un motivo diferente a varicela. La mortalidad osciló entre 4 y 14 individuos/año, el 80% mayores de 14 años. El 64% de los casos notificados de herpes zóster fueron mayores de 50 años. La tasa media anual de ingresos por fue de 2,5 por 100.000 habitantes sin diferencias por sexo. La tasa media anual de defunciones fue 0,31 por millón de habitantes.''',
            '''Generalmente los enfermos no presentan síntomas evidentes antes de que se produzca el brote de la enfermedad, que viene acompañado por fiebre, cansancio, dolor de cabeza y falta de apetito.Los síntomas comienzan entre los 10 y los 21 días después de la infección. El más característico es la aparición de manchas rojizas y planas, que van tomando relieve poco a poco hasta convertirse en ampollas o vesículas''',
            '''La varicela requiere una terapia antiviral y sintomática. La terapia sintomática se realiza con analgésicos, antihistamínicos y cremas o lociones que calman el picor. Su efecto es paliativo y transitorio. También son recomendables las compresas húmedas o los baños tibios para limpiar las heridas que se producen al rascar las ampollas y evitar posibles infecciones. En caso de infección bacteriana se administran antibióticos y si surgen complicaciones serias se emplean medicamentos antivirales, como aciclovir o interferón alfa''',
            '''La vacuna previene la enfermedad hasta en un 80 por ciento de los casos y se administra a niños sanos entre 12 y 18 meses de edad. A partir de los 13 años pueden ser inmunizados con dos dosis.'''),
        TarjetasEnfermedades("Tetanos","assets/images/tarjetaTetanos.jpg",
            '''El tétanos es una enfermedad grave provocada por la toxina de una bacteria llamada clostridium tetani. Esta toxina actúa como un veneno que afecta al sistema nervioso central.''',
            '''En España se han notificado una media de 10 casos al año, desde 2009 a 2015, el 69,1 % de ellos mayores de 64 años de edad y casi todos en personas no/mal vacunadas.En Europa se han notificado 49-167 casos cada año desde 2006 (incidencia estimada 0,01/100·000 hab.); dos de cada tres casos (65 %) ocurren en personas mayores de 65 años''',
            '''Espasmos\nBabeo\nSudoracion excesiva\nFiebre\nIrritabilidad\nDificultad para engullir\nDefecacion incontrolable''',
            '''Es importante resaltar que sin tratamiento, uno de cada cuatro personas infectadas muere. Sin embargo, con el tratamiento apropiado, menos del 15 por ciento de las personas infectadas muere.
Una vez que la persona sobreviva a la fase aguda de la enfermedad, la recuperación, por lo general, suele ser completa\nReposo\nMedicamentos para neutralizar el toxico\nRelajantes musculares\nAntibioticos''',
            '''El tétanos es una enfermedad completamente prevenible por medio de  la vacunación, la cual consta de tres dosis.'''),
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