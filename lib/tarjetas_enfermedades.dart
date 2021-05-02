import 'package:app_enfermedades/pantalla_enfermedad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TarjetasEnfermedades extends StatefulWidget {
  String pathImage;
  String nombreEnfermedad;
  String queEs;
  String estadisticas;
  String sintomas;
  String tratamiento;
  String prevencion;

  TarjetasEnfermedades(this.nombreEnfermedad, this.pathImage, this.queEs, this.estadisticas, this.sintomas, this.tratamiento, this.prevencion);
  @override
  _TarjetasEnfermedadesState createState() => _TarjetasEnfermedadesState();
}

class _TarjetasEnfermedadesState extends State<TarjetasEnfermedades> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(CupertinoPageRoute(
            builder: (context) => PantallaEnfermedad(
          widget.nombreEnfermedad,
          widget.pathImage,
          widget.queEs,
          widget.estadisticas,
          widget.sintomas,
          widget.tratamiento,
          widget.prevencion
        )));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xff459AFF),
          boxShadow: [
            BoxShadow(color: Colors.grey[400], spreadRadius: 4, blurRadius: 15, offset: Offset(3.0, 5.0)),
            BoxShadow(color: Colors.white, spreadRadius: 4, blurRadius: 10, offset: Offset(-6, -5))
          ]
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                image: DecorationImage(image: AssetImage(widget.pathImage), fit: BoxFit.cover)
              ),
              height: MediaQuery.of(context).size.height/4.2,
                // child: Image(image: AssetImage("assets/images/tarjetaCovid.jpg"), fit: BoxFit.cover,)
            ),
            Container(
              padding: EdgeInsets.only(top: 12.0),
              alignment: Alignment.center,
              child: Text(
                widget.nombreEnfermedad,
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 24.0,
                  color: Colors.white,

                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
