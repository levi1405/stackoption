import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // variable para el tamaño del background
    final h = MediaQuery.of(context).size.height;
    return Center(
        child: SingleChildScrollView(
      child: Column(
        // alineacion de columna
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // uso del Stack
          Stack(
            // --IMPORTANTE.--- con clipBehavior clip en "none"
            //permite que sobresalga un objeto y no se esconda la parte que sobresale
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              // fondo de la parte de arriba
              Image.network(
                "https://wallpaperaccess.com/full/427852.jpg",
                height: h / 3,
              ),
              // Foto de perfil de la persona
              const Positioned(
                //para que se coloque unos grados mas abajo del backgorud
                bottom: -40,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://wallpapers-clan.com/wp-content/uploads/2023/01/anime-aesthetic-boy-pfp-11.jpg"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          //Otra columna para la informacion
          const Center(
            child: Column(
              children: [
                Text(
                  "Nombre :Levi Mendoza",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Android Developer",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            //para los iconos de redes sociales
            // ------------------------------
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    FontAwesomeIcons.facebook,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.red,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    FontAwesomeIcons.linkedin,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12.0),
            child: Text(
              "Acerca de mi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12.0),
            child: Text(
              "Como desarrollador de Flutter, disfruto creando aplicaciones multiplataforma elegantes y eficientes. Mi código es una fusión de creatividad y precisión, lo que da como resultado experiencias de usuario perfectas. Con una base sólida en la programación de Dart y una habilidad especial para el diseño UI/UX, me especializo en la creación de aplicaciones dinámicas, responsivas y visualmente atractivas. Mi compromiso con el aprendizaje continuo y la actualización de las últimas tendencias de Flutter me permite ofrecer soluciones de primer nivel que satisfacen las necesidades de los usuarios y superan las expectativas. Convirtamos juntos las ideas en realidades innovadoras.",
              style: TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
    ));
  }
}
//Agregado de fuentes