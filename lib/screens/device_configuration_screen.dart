import 'package:flutter/material.dart';

class DeviceConfigurationScreen extends StatefulWidget {
  static const String routeName = '/device-config';

  @override
  _DeviceConfigurationScreenState createState() =>
      _DeviceConfigurationScreenState();
}

class _DeviceConfigurationScreenState extends State<DeviceConfigurationScreen> {
  bool _isActive = true;

  String _getStatusText() {
    return _isActive ? 'Status:\tAtivo' : 'Status:\tDesativado';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurar Dispositivo'),
        actions: <Widget>[
          // Switch.adaptive(
          //   activeColor: Theme.of(context).accentColor,
          //   value: _isActive,
          //   onChanged: (val) {
          //     setState(() {
          //       _isActive = !_isActive;
          //     });
          //   },
          // ),
          IconButton(
            icon: Icon(Icons.delete_forever),
            color: Theme.of(context).errorColor,
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
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
                    TextField(
                      decoration: const InputDecoration(labelText: 'Local:'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration:
                          const InputDecoration(labelText: 'Equipamento:'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          _getStatusText(),
                          style: Theme.of(context).textTheme.title,
                        ),
                        Switch.adaptive(
                          activeColor: Theme.of(context).accentColor,
                          value: _isActive,
                          onChanged: (val) {
                            setState(() {
                              _isActive = !_isActive;
                            });
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          RaisedButton.icon(
            icon: const Icon(Icons.save),
            label: const Text('Salvar'),
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
