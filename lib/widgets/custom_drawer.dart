import 'package:flutter/material.dart';
import '../screens/devices_list_screen.dart';
import '../screens/about_screen.dart';

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
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(DevicesListScreen.routeName);
            },
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
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AboutScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
