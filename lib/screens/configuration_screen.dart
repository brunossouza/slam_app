import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slam/providers/devices_provider.dart';
import 'package:slam/providers/theme_provider.dart';
import '../widgets/custom_drawer.dart';

class ConfigurationScreen extends StatefulWidget {
  static const String routeName = '/configuration';

  @override
  _ConfigurationScreenState createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
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
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    Consumer<ThemeProvider>(builder: (cxt, snap, ch) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Tema do Aplicativo: ${snap.isDark ? 'Dark' : 'Light'}',
                            style: Theme.of(context).textTheme.title,
                          ),
                          Switch.adaptive(
                            activeColor: Theme.of(context).accentColor,
                            value: snap.isDark,
                            onChanged: (val) {
                              setState(() {
                                if (snap.isDark) {
                                  snap.light();
                                } else {
                                  snap.dark();
                                }
                              });
                            },
                          )
                        ],
                      );
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    Consumer<DevicesProvider>(builder: (cxt, snap, ch) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Carregar dados de exemplo: ${snap.isLoadSampleData}',
                            style: Theme.of(context).textTheme.title,
                          ),
                          Switch.adaptive(
                            activeColor: Theme.of(context).accentColor,
                            value: snap.isLoadSampleData,
                            onChanged: (val) {
                              setState(() {
                                snap.loadSampleData(!snap.isLoadSampleData);
                              });
                            },
                          )
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
          // RaisedButton.icon(
          //   icon: Icon(Icons.save),
          //   label: Text('Salvar'),
          //   color: Theme.of(context).errorColor,
          //   elevation: 0,
          //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}
