import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Slam'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.developer_board),
            title: Text('Dispositivos'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.insert_chart),
            title: Text('Gráficos'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Sobre'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
