import 'package:flutter/material.dart';
// Importamos nuestras pantallas (las que creamos para las actividades)
import 'screens/pantalla_textos.dart';
import 'screens/pantalla_disposicion.dart';

void main() {
  runApp(const MyApp());
}
// Esta clase representa toda la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App con Drawer - Actividades 6 y 7',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
// Esta clase contiene la estructura principal, la pantalla y el menú lateral
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
// Esta clase controla el cambio de pantallas en el Drawer
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    PantallaTextos(),
    PantallaDisposicion(),
  ];

  final List<String> _titles = const [
    'Actividad 6 - Textos',
    'Actividad 7 - Disposición de Imágenes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedIndex])),
      // Este drawer es el menú lateral que se abre deslizando o tocando el menú hamburguesa
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  'Menú Principal',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            // Esta es opción 1 del Drawer, la actividad 6
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: const Text('Actividad 6: Textos'),
              onTap: () {
                setState(() => _selectedIndex = 0);
                Navigator.pop(context);
              },
            ),
             // Esta es la opción 2 del Drawer, la actividad 7
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Actividad 7: Disposición de Imágenes'),
              onTap: () {
                setState(() => _selectedIndex = 1);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
