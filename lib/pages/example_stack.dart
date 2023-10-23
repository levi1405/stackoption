import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stackoption/pages/number_widget.dart';

class ExampleStack extends StatefulWidget {
  const ExampleStack({super.key});

  @override
  State<ExampleStack> createState() => _ExampleStackState();
}

class _ExampleStackState extends State<ExampleStack> {
  //altura de la imagen de fondo
  final double coverHeight = 280;
  //altura del perfil image
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[parteArriba(), buildContenido()],
      ),
    );
  }

  Widget buildContenido() => Column(
        children: [
          const SizedBox(height: 8),
          const Text(
            'Levi Mendoza',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Flutter Software Engineer',
            style: TextStyle(fontSize: 20, color: Colors.black54),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.slack),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.linkedin),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.twitter),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          const NumbersWidget(),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          buildAcerca(),
          const SizedBox(height: 32),
        ],
      );
  Widget parteArriba() {
    final bottom = profileHeight / 2;
    //posision media vertical de perfil image
    //altura de backgroud - altura de perfilImage
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildPortada()),
        Positioned(
            //tomando desde arriba baja la imagen hasta un punto medio
            //del borde inferior de la portada
            top: top,
            child: buildPerfilImage()),
      ],
    );
  }

  Widget buildPortada() => Container(
      color: Colors.grey,
      width: double.infinity,
      height: coverHeight,
      child: const Image(
        image: NetworkImage('https://wallpaperaccess.com/full/5519103.jpg'),
      ));

  Widget buildPerfilImage() => CircleAvatar(
        //el radio igual a la altura de perfil image entre(/) 2
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        // backgroundImage: const AssetImage('assets/img/default_profile.jpg'),
        backgroundImage: const NetworkImage(
            'https://as2.ftcdn.net/v2/jpg/05/76/65/21/1000_F_576652189_WK1JiTOwjKCFIJDJJLI1Q6RtwSfpgspu.jpg'),
      );

  Widget buildAcerca() => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Acerca de Mi',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            'Entusiasta de la tecnología y sus avances, actualmente estoy estudiando para convertirme en un Técnico en Ingeniería de Desarrollo de Software. Desde temprana edad, me intrigó el mundo de la programación y la creación de soluciones tecnológicas. A medida que avanzo en mi carrera, he descubierto un amor profundo por la resolución de problemas y la creación de software que hace la vida de las personas más fácil y eficiente.',
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          SizedBox(height: 16),
        ],
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(child: Icon(icon, size: 32)),
          ),
        ),
      );
}
