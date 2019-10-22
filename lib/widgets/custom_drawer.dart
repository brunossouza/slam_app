import 'package:flutter/material.dart';

import '../screens/charts_screen.dart';
import '../screens/devices_list_screen.dart';
import '../screens/configuration_screen.dart';
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
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ChartScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ConfigurationScreen.routeName);
            },
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
