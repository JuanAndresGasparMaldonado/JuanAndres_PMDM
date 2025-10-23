import 'package:flutter/material.dart';
// Importamos las pantallas que usaremos
import 'screens/pantalla_textos.dart';
import 'screens/pantalla_disposicion.dart';
// NUEVO: Importamos la pantalla de la Actividad 8
import 'screens/pantalla_actividad8.dart';

// El punto de entrada principal de la aplicación
void main() {
  runApp(const MyApp());
}

// MyApp es el widget raíz de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp configura la aplicación principal (tema, pantalla inicial, etc.)
    return MaterialApp(
      title: 'Actividad 2 con Drawer', // Título que se muestra en la multitarea
      theme: ThemeData(
        // Tema básico de la aplicación
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // La pantalla inicial será MyHomePage
      home: const MyHomePage(),
      // Desactivamos el banner de "debug"
      debugShowCheckedModeBanner: false,
    );
  }
}

// MyHomePage es el widget principal con estado (puede cambiar)
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// _MyHomePageState contiene el estado y la lógica de MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  // Índice de la pantalla seleccionada actualmente (empieza en 0)
  int _selectedIndex = 0;

  // Lista de widgets (pantallas) que se pueden mostrar en el body
  // Cada elemento corresponde a una opción del menú
  final List<Widget> _screens = [
    const PantallaTextos(),       // Índice 0 (Actividad 6)
    const PantallaDisposicion(), // Índice 1 (Actividad 7)
    // NUEVO: Añadimos la pantalla de la Actividad 8 
    const PantallaActividad8(),  // Índice 2 (Actividad 8)
  ];

  // Lista de títulos para la AppBar, correspondientes a cada pantalla
  final List<String> _titles = [
    'Actividad 6: Textos',
    'Actividad 7: Disposición de Imágenes',
    // NUEVO: Añadimos el título para la Actividad 8
    'Actividad 8: Responsive',
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold es la estructura básica de la página (AppBar, Drawer, Body)
    return Scaffold(
      // La barra superior, su título cambia según la pantalla seleccionada
      appBar: AppBar(title: Text(_titles[_selectedIndex])),

      // Este drawer es el menú lateral que se abre deslizando o tocando el menú hamburguesa
      drawer: Drawer(
        child: ListView(
          // Quitamos el padding superior por defecto del ListView
          padding: EdgeInsets.zero,
          children: [
            // Cabecera del Drawer
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  'Menú Principal',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),

            // Opción 1 del Drawer: Actividad 6 (Índice 0)
            ListTile(
              leading: const Icon(Icons.text_fields), // Icono a la izquierda
              title: const Text('Actividad 6: Textos'), // Texto de la opción
              onTap: () {
                // Cuando se toca esta opción:
                setState(() => _selectedIndex = 0); // Cambia el índice seleccionado a 0
                Navigator.pop(context); // Cierra el Drawer
              },
            ),

            // Opción 2 del Drawer: Actividad 7 (Índice 1)
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Actividad 7: Disposición de Imágenes'),
              onTap: () {
                // Cuando se toca esta opción:
                setState(() => _selectedIndex = 1); // Cambia el índice seleccionado a 1
                Navigator.pop(context); // Cierra el Drawer
              },
            ),

            // NUEVO: Opción 3 del Drawer: Actividad 8 (Índice 2)
            ListTile(
              leading: const Icon(Icons.phonelink_setup), // Icono para responsive
              title: const Text('Actividad 8: Responsive'), // Texto
              onTap: () {
                // Cuando se toca esta opción:
                setState(() => _selectedIndex = 2); // Cambia el índice seleccionado a 2
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
          ],
        ),
      ),

      // El cuerpo principal de la pantalla, muestra el widget correspondiente al _selectedIndex
      body: _screens[_selectedIndex],
    );
  }
}