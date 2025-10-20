import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';// Aquí estan las fuentes de Google
import 'package:auto_size_text/auto_size_text.dart'; // Este paquete es el paqute que he encontrado para poder añadir como dependencia que mejora la presentación del texto de esta actividad.

class PantallaTextos extends StatelessWidget {
  const PantallaTextos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Este texto tiene la fuente por defecto y desborda horizontalmente
        Expanded(
          child: Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Este es un texto muy largo que no cabe en el contenedor y demuestra que pasa cuando en Flutter el texto es más grande de lo esperado.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        
        // Texto con fuente importada de Google Fonts que desborda verticalmente
        Expanded(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Texto con la fuente de Google Lobster. Este texto también es demasiado grande y se corta.',
              style: GoogleFonts.lobster(
                fontSize: 56,
                color: Colors.black,
              ),
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        
        // Texto con AutoSizeText que hace que se ajuste el tamaño automaticamente
        Expanded(
          child: Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText(
              'Este texto se ajusta automáticamente para caber en su contenedor sin desbordarse gracias al paquete auto_size_text.',
              style: const TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 40,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
          ),
        ),
      ],
    );
  }
}
