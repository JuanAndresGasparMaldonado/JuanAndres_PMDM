import 'package:flutter/material.dart';

class PantallaDisposicion extends StatelessWidget {
  const PantallaDisposicion({super.key});

  // Definimos las 3 imágenes que vamos a usar

  // Imagen A (local)
  final imagenA = const Image(
    image: AssetImage('assets/image1.jpg'),
    fit: BoxFit.cover, // Para que rellene la caja
  );

  // Imagen B (de internet)
  final imagenB = const Image(
    image: NetworkImage(
        'https://img.freepik.com/foto-gratis/blanco-persona-hombre-actividad-deportiva_1368-1931.jpg?semt=ais_hybrid'),
    fit: BoxFit.cover, // Para que rellene la caja
  );

  // Imagen C (la otra de internet)
  final imagenC = const Image(
    image: NetworkImage(
        'https://img.freepik.com/foto-gratis/permanente-formacion-feliz-posando-jugando_1368-1937.jpg?semt=ais_hybrid&w=740&q=80'),
    fit: BoxFit.cover, // Para que rellene la caja
  );

  // Definimos el tamaño que tendrán las cajas de las imágenes
  final double tamanoCaja = 100.0; // 100 píxeles de alto y ancho

  @override
  Widget build(BuildContext context) {
    // Usamos Padding para que no esté todo pegado a los bordes de la pantalla
    return Padding(
      padding: const EdgeInsets.all(8.0),
      
      // Apilamos las filas (Row) verticalmente.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // FILA 1: Con 1 imagen (Imagen A)
          Row(
            children: [
              SizedBox(
                width: tamanoCaja,
                height: tamanoCaja,
                child: imagenA,
              ),
            ],
          ),

          //  Espacio vertical entre filas
          const SizedBox(height: 8),

          // FILA 2: Con 2 imágenes (Imagen B, repetida)
          Row(
            children: [
              SizedBox(
                width: tamanoCaja,
                height: tamanoCaja,
                child: imagenB,
              ),
              // Espacio horizontal entre imágenes
              const SizedBox(width: 8), 
              SizedBox(
                width: tamanoCaja,
                height: tamanoCaja,
                child: imagenB,
              ),
            ],
          ),

          // Un pequeño espacio vertical entre filas
          const SizedBox(height: 8),

          // FILA 3: Con 3 imágenes (Imagen C, repetida)
          Row(
            children: [
              SizedBox(
                width: tamanoCaja,
                height: tamanoCaja,
                child: imagenC,
              ),
              // Espacio horizontal entre imágenes
              const SizedBox(width: 8),
              SizedBox(
                width: tamanoCaja,
                height: tamanoCaja,
                child: imagenC,
              ),
              // Espacio horizontal entre imágenes
              const SizedBox(width: 8),
              SizedBox(
                width: tamanoCaja,
                height: tamanoCaja,
                child: imagenC,
              ),
            ],
          ),
        ],
      ),
    );
  }
}