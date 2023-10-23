import 'package:flutter/material.dart';
import 'package:stackoption/pages/cuadro_stack.dart';
import 'package:stackoption/pages/example_stack.dart';
import 'package:stackoption/pages/perfil_pantalla.dart';
import 'package:stackoption/pages/planets.dart';
import 'package:stackoption/pages/profile.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _itemDrawer = 0;
  _getDrawerItem(int position) {
    switch (position) {
      case 0:
        return CuadroStack();
      case 1:
        return PerfilPantalla();
      case 2:
        return Planets();
      case 3:
        return MyProfile();
      case 4:
        return ExampleStack();
    }
  }

  void _onSelectItemDrawer(int pos) {
    Navigator.pop(context);
    setState(() {
      _itemDrawer = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Op'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'Levi Mendoza',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text('Cuadros Stack'),
              onTap: () {
                _onSelectItemDrawer(0);
              },
            ),
            const Divider(
              thickness: 4,
              color: Colors.orange,
            ),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Perfil 1'),
              onTap: () {
                _onSelectItemDrawer(1);
              },
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Planetas'),
              onTap: () {
                _onSelectItemDrawer(2);
              },
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Perfil 2'),
              onTap: () {
                _onSelectItemDrawer(3);
              },
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Perfil Stack'),
              onTap: () {
                _onSelectItemDrawer(4);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItem(_itemDrawer),
    );
  }
}
