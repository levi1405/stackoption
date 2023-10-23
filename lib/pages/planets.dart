import 'package:flutter/material.dart';
import 'package:stackoption/pages/planet_widget.dart'; // Asegúrate de importar el widget PlanetCard

class Planets extends StatelessWidget {
  // Define una lista de datos de planetas
  final List<Map<String, dynamic>> planets = [
    {
      'planetName': 'Marte',
      'imageUrl': 'https://www.pngmart.com/files/21/Mars-Planet-PNG-Photo.png',
      'cardColor': Colors.teal.shade400,
      'description':
          'Cuarto planeta en orden de \n distancia al Sol y el segundo \n más pequeño del \n sistema solar.',
      'distance': '54,600,000 Km',
    },
    {
      'planetName': 'Urano',
      'imageUrl':
          'https://images.rawpixel.com/image_transparent_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA5L3Jhd3BpeGVsX29mZmljZV8yNl92ZWN0b3JfaWxsdXN0cmF0aW9uX29mX2FfdXJhbnVzX3BsYW5ldF9pc29sYV8zNDE2ZDM0MS05YTg5LTRhNTctYWE3Yi00ZGQ0ZGM4NjE1MDhfMS5wbmc.png',
      'cardColor': Colors.red.shade400,
      'description':
          'Urano, séptimo planeta del \n sistema solar, el tercero de \n mayor tamaño.',
      'distance': '2,600,000 000 Km',
    },
    {
      'planetName': 'Saturno',
      'imageUrl':
          'https://static.vecteezy.com/system/resources/previews/016/778/857/original/planet-galaxy-space-free-png.png',
      'cardColor': Colors.cyan.shade300,
      'description':
          'Saturno es el sexto planeta del \n sistema solar contando desde \n el Sol, el segundo en tamaño \ny masa después de Júpiter',
      'distance': '1234 Km',
    },
    // Agrega más datos de planetas según sea necesario
  ];

  Planets({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: planets.length,
      itemBuilder: (context, index) {
        final planet = planets[index];
        return PlanetCard(
          planetName: planet['planetName']!,
          imageUrl: planet['imageUrl']!,
          // color: Colors.white,
          cardColor: planet['cardColor'],
          description: planet['description']!,
          distance: planet['distance']!,
        );
      },
    );
  }
}
