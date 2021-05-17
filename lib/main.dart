import 'package:flutter/material.dart';

void main() => runApp(DanaApp());

class DanaApp extends StatefulWidget {
  @override
  _DanaAppState createState() => _DanaAppState();
}//Fin Clase DanaApp

class _DanaAppState extends State<DanaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),       
      home: Principal());
  }
}//Fin Clase _DanaAppState

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}//Fin Clase Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
TabController controller;
 void initState() {
    super.initState();
    controller = TabController(
      length: 6,
      vsync: this,
      initialIndex: 0,
    );
  }//Fin Iniciar estado con 5 Iconos  

Widget card(String text) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 500.0,
        width: 500.0,
        child: Center(child: Text(text, style: TextStyle(
      color: Colors.grey[500],
      fontWeight: FontWeight.bold,
      fontSize: 30))),
      ),
    );
 }//Fin de Tarjeta

 Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  }//Fin Tab Enviando Texto y Icono

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars Dana Romero"),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Hola soy la tarjeta 1!"),
          card("Hola soy la tarjeta 2!"),
          card("Hola soy la tarjeta 3!"),
          card("Hola soy la tarjeta 4!"),
          card("Hola soy la tarjeta 5!"),
          card("Hola soy la tarjeta 6!"),
        ],//Fin widget
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true  ,
        tabs: <Widget>[
          tab("Explorar", Icon(Icons.public_sharp   , color: Colors.lightBlue)),
          tab("Amigos", Icon(Icons.star_outlined,  color: Colors.lightBlue)),
          tab("Agregar", Icon(Icons.add_circle_outlined ,  color: Colors.lightBlue)),
          tab("Actividad", Icon(Icons.follow_the_signs ,  color: Colors.lightBlue)),
          tab("Fotos", Icon(Icons.crop_original,   color: Colors.lightBlue)),
          tab("Perfil", Icon(Icons.portrait_outlined ,  color: Colors.lightBlue)),
        ],
      ),
    );//Fin Scaffold
  } // Fin Widget
}//Fin Clase _PrincipalState