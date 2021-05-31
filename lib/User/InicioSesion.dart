import 'package:flutter/material.dart';
import 'log_in.dart' as login;
import 'sign_up.dart' as signup;

class InicioSesion extends StatefulWidget{
  int tab = 1;
  InicioSesion(this.tab);
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<InicioSesion> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 2, initialIndex: widget.tab);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    // int tabnum= widget.tab;

    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/3.2),
        child: AppBar(
          backgroundColor: Color(0xff459AFF),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/3.5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45.0),
                      bottomRight: Radius.circular(45.0)
                  )),
              child: Column(children: [
                  Container(
                  // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/28) ,
                  //   padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  //   height: MediaQuery.of(context).size.height/4,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.height/10,
                      backgroundColor: Colors.transparent,
                      // foregroundImage: AssetImage('assets/logo_login.png'),
                      child: Image(
                        image: AssetImage('assets/logo_login.png'),
                        fit: BoxFit.cover,
                      ),
                    )
                ),
                TabBar(
                    indicatorColor: Color(0xffefefef),
                    controller: controller,
                    tabs: <Tab>[

                      //Seleccionar iniciar sesión o registrarse (Botones)
                      new Tab(

                        child: Text(
                          'Iniciar Sesión',
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      new Tab(
                        child: Text(
                          'Registrarse',
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),

                    ]
                ),
              ],),
            ),

          )
          ),
        ),
      body: new TabBarView(
        controller: controller,

        children:[
          //Pestañas a
          new login.log_in(),
          new signup.sign_up(),
        ]
      )
    );
  }
}