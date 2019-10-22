import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class ConfigurationScreen extends StatelessWidget {
  static const String routeName = '/configuration';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: CustomDrawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Center(
          child: Text('Configurações'),
        ),
      ),
    );
  }
}
