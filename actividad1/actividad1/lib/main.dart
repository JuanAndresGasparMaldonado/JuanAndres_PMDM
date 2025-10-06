import 'package:flutter/material.dart';
import 'widgets/my_drawer.dart';
import 'screens/pantalla_nombre.dart';
import 'screens/pantalla_foto.dart';
import 'screens/pantalla_miniaturas.dart';
import 'screens/pantalla_iconos.dart';
import 'screens/pantalla_imagenes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Tema 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PantallaNombre(),
    );
  }
}
