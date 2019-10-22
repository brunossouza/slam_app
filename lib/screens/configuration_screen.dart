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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ip do Servidor:',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextField(
                      decoration:
                          InputDecoration(labelText: 'ex - 192.168.1.1'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Porta do Servidor:',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'opcional - 8080'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          RaisedButton.icon(
            icon: Icon(Icons.save),
            label: Text('Salvar'),
            color: Theme.of(context).errorColor,
            elevation: 0,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
