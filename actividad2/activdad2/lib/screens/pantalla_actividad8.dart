import 'package:flutter/material.dart';

// --- Pantalla Actividad 8 ---
class PantallaActividad8 extends StatelessWidget {
  const PantallaActividad8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SingleChildScrollView para evitar errores si no cabe todo verticalmente
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Añade espacio de 16 píxeles en todos los lados
          child: Column(
            // crossAxisAlignment.stretch hace que los children ocupen todo el ancho posible
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              // --- Fila 1: Imagen 1 ---
              Image.asset(
                'assets/image1.jpg',
                height: 150,        // Altura fija
              ),
              const SizedBox(height: 8), // Espacio pequeño debajo de la imagen
              const Text(
                'Texto Imagen 1',   // Texto simple
                textAlign: TextAlign.center, // Centrado
                style: TextStyle(fontSize: 14), // Tamaño de letra
              ),
              const SizedBox(height: 20), // Espacio más grande antes de la siguiente fila

              // --- Fila 2: Dos Imágenes (Imagen 2 y 3) ---
              Row( // Row coloca elementos uno al lado del otro
                children: <Widget>[
                  // Columna para Imagen 2 + Texto 2
                  Expanded( // Expanded reparte el espacio horizontal
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'assets/image2.jpg',
                          height: 150, // Misma altura que la imagen 1
                          
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Texto Imagen 2',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16), // Espacio horizontal entre las imágenes

                  // Columna para Imagen 3 + Texto 3
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'assets/image3.jpg',
                          height: 150, // Misma altura que la imagen 1
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Texto Imagen 3',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Espacio antes de la última fila

              // --- Fila 3: Tres Imágenes (Imagen 4, 5 y 6) ---
              Row(
                children: <Widget>[
                  // Columna para Imagen 4 + Texto 4
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'assets/image4.jpg',
                          height: 150, // Misma altura que la imagen 1
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Texto Imagen 4',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16), // Espacio

                  // Columna para Imagen 5 + Texto 5
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'assets/image5.jpg',
                          height: 150, // Misma altura que la imagen 1
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Texto Imagen 5',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16), // Espacio

                  // Columna para Imagen 6 + Texto 6
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'assets/image6.jpg',
                          height: 150, // Misma altura que la imagen 1
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Texto Imagen 6',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}