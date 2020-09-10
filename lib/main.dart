import 'package:flutter/material.dart';
// import 'package:disenosflutter/src/pages/animaciones_page.dart';
import 'package:disenosflutter/src/reto/cuadra_animado.dart';
// import 'package:disenosflutter/src/pages/headers_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      home: CuadradoAnimadoPage(),
    );
  }
}