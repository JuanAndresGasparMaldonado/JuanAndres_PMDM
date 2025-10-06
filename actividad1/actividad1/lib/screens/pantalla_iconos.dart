import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class PantallaIconos extends StatelessWidget {
  const PantallaIconos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iconos en filas")),
      drawer: const MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(Icons.home, size: 40),
            Icon(Icons.star, size: 40),
            Icon(Icons.favorite, size: 40),
            Icon(Icons.person, size: 40),
            Icon(Icons.settings, size: 40),
          ]),
        ],
      ),
    );
  }
}
