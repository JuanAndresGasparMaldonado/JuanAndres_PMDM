import 'package:flutter/material.dart';
import '../screens/pantalla_nombre.dart';
import '../screens/pantalla_foto.dart';
import '../screens/pantalla_miniaturas.dart';
import '../screens/pantalla_iconos.dart';
import '../screens/pantalla_imagenes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Menú Principal',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            title: const Text('Nombre y Repositorio'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PantallaNombre()));
            },
          ),
          ListTile(
            title: const Text('Foto e Identidad'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PantallaFoto()));
            },
          ),
          ListTile(
            title: const Text('Miniaturas'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PantallaMiniaturas()));
            },
          ),
          ListTile(
            title: const Text('Iconos en filas'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PantallaIconos()));
            },
          ),
          ListTile(
            title: const Text('Imágenes en columnas'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PantallaImagenes()));
            },
          ),
        ],
      ),
    );
  }
}
