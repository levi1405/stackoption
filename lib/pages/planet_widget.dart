import 'package:flutter/material.dart';

class PlanetCard extends StatelessWidget {
  final String planetName;
  final String imageUrl;
  final Color cardColor;
  final String description;
  final String distance;

  PlanetCard({
    required this.planetName,
    required this.imageUrl,
    required this.cardColor,
    required this.description,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      color: Colors.grey,
      width: double.infinity,
      height: 250,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 50,
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                constraints: BoxConstraints(maxWidth: 300, maxHeight: 200),
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: Image(
              image: NetworkImage(imageUrl),
              width: 100.0,
              height: 100.0,
            ),
          ),
          Positioned(
            top: 10.0,
            left: 150,
            child: Text(
              planetName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 50,
            left: 90,
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2, 2),
                    blurRadius: 3.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 130,
            child: Stack(
              children: [
                // Icono de sombra
                Icon(
                  Icons.location_on,
                  color: Colors.black
                      .withOpacity(0.5), // Color de la sombra y opacidad
                  size: 34,
                ),
                // Icono principal
                const Icon(
                  Icons.location_on,
                  color: Colors.green,
                  size: 30,
                ),
              ],
            ),
          ),
          Positioned(
            top: 150,
            left: 160,
            child: Text(
              distance,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2, 2),
                    blurRadius: 3.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
