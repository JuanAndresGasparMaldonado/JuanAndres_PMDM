import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/my_drawer.dart';

class PantallaNombre extends StatelessWidget {
  const PantallaNombre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nombre y Repositorio")),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Juan Andrés Gaspar Maldonado",
              style: GoogleFonts.roboto(fontSize: 22),
            ),
            const SizedBox(height: 10),
            Text(
              "Repositorio: JuanAndres_PMDM",
              style: GoogleFonts.lato(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
