import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(text: 'Proyectos', value: 45),
          buildDivider(),
          buildButton(text: 'Following', value: 438),
          buildButton(text: 'Followers', value: 4743),
        ],
      );
  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );
  Widget buildButton({required String text, required int value}) =>
      MaterialButton(
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            Text(
              '$value',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25) ,
            ),
            SizedBox(height: 2),
            Text(text,
            style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
}
