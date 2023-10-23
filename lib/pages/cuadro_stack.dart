import 'package:flutter/material.dart';

class CuadroStack extends StatelessWidget {
  const CuadroStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Propiedad \n Widget Stack',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 3.0,
                  color: Colors.amberAccent,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Stack(
            clipBehavior: Clip.none,
            // overflow: Overflow.visible,
            // fit: StackFit.expand,
            // fit: StackFit.loose,
            // alignment: Alignment.center,
            // alignment: AlignmentDirectional.center,
            // alignment: AlignmentDirectional.centerStart,
            /* alinea en medio vertical a la izquierda */
            // alignment: AlignmentDirectional.bottomCenter, /* alinea abajo al centro */
            // alignment: AlignmentDirectional.bottomEnd, /* alinea abajo a la derecha */
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 300,
                height: 300,
                padding: EdgeInsets.only(top: 100),
                alignment: Alignment.topRight,
                child: const Text(
                  'Primero',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                bottom: -25,
                left: -25,
                child: Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.only(top: 60),
                  // alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Segundo',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ), //
                ),
              ),
              Positioned(
                // top: -25,
                // right: -10,
                // right: -20,
                child: Container(
                  // color: Colors.green,
                  width: 150,
                  height: 150,
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://a.slack-edge.com/80588/marketing/img/meta/slack_hash_256.png")),
                  ),
                  child: const Text(
                    "Slack Brand",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
