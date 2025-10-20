import 'package:flutter/material.dart';

class PantallaDisposicion extends StatelessWidget {
  const PantallaDisposicion({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // tres imágenes por fila
      children: [
        // Imagen 1 local que está en assets
        Image.asset('assets/image1.jpg', fit: BoxFit.cover),

        // Imagen 2 cogida desde Internet
        Image.network(
          'https://img.freepik.com/foto-gratis/blanco-persona-hombre-actividad-deportiva_1368-1931.jpg?semt=ais_hybrid',
          fit: BoxFit.cover,
        ),

        // Imagen 3 cogida desde Internet
        Image.network(
          'https://img.freepik.com/foto-gratis/permanente-formacion-feliz-posando-jugando_1368-1937.jpg?semt=ais_hybrid&w=740&q=80',
          fit: BoxFit.cover,
        ),

        // Imagen 1 repetida local aparece justo debajo de la primera
        Image.asset('assets/image1.jpg', fit: BoxFit.cover),

        // Imagen 2 repetida cogida desde Internet
        Image.network(
          'https://img.freepik.com/foto-gratis/blanco-persona-hombre-actividad-deportiva_1368-1931.jpg?semt=ais_hybrid',
          fit: BoxFit.cover,
        ),

        // Imagen 3 repetida cogida desde Internet
        Image.network(
          'https://img.freepik.com/foto-gratis/permanente-formacion-feliz-posando-jugando_1368-1937.jpg?semt=ais_hybrid&w=740&q=80',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
