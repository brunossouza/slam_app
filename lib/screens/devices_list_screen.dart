import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/devices_provider.dart';
import '../widgets/device_item.dart';
import '../widgets/custom_drawer.dart';

enum FilterOptions { ATIVO, DESATIVADO, CONFIGURAR, OFFLINE, ALL }

class DevicesListScreen extends StatefulWidget {
  static const String routeName = '/devices-list';
  @override
  _DevicesListScreenState createState() => _DevicesListScreenState();
}

class _DevicesListScreenState extends State<DevicesListScreen> {
  Future<void> _refreshProducts(BuildContext context) async {
    await Provider.of<DevicesProvider>(context, listen: false)
        .fetchAndSetDevices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dispositivos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _refreshProducts(context);
            },
          ),
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.ALL) {
                Provider.of<DevicesProvider>(context, listen: false)
                    .filterByStatus('TODOS');
              }

              if (selectedValue == FilterOptions.ATIVO) {
                Provider.of<DevicesProvider>(context, listen: false)
                    .filterByStatus('ATIVO');
              }

              if (selectedValue == FilterOptions.DESATIVADO) {
                Provider.of<DevicesProvider>(context, listen: false)
                    .filterByStatus('DESATIVADO');
              }

              if (selectedValue == FilterOptions.CONFIGURAR) {
                Provider.of<DevicesProvider>(context, listen: false)
                    .filterByStatus('CONFIGURAR');
              }

              if (selectedValue == FilterOptions.OFFLINE) {
                Provider.of<DevicesProvider>(context, listen: false)
                    .filterByStatus('OFFLINE');
              }
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Todos'),
                value: FilterOptions.ALL,
              ),
              PopupMenuItem(
                child: Text('Ativos'),
                value: FilterOptions.ATIVO,
              ),
              PopupMenuItem(
                child: Text('Desativados'),
                value: FilterOptions.DESATIVADO,
              ),
              PopupMenuItem(
                child: Text('Configurar'),
                value: FilterOptions.CONFIGURAR,
              ),
              PopupMenuItem(
                child: Text('Offline'),
                value: FilterOptions.OFFLINE,
              ),
            ],
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FutureBuilder(
          key: UniqueKey(),
          future: _refreshProducts(context),
          builder: (cxt, snapshot) {
            return snapshot.connectionState == ConnectionState.waiting
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'carregando...',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )
                : Consumer<DevicesProvider>(
                    builder: (cxt, devicesProvider, _) => devicesProvider
                                .items.length ==
                            0
                        ? Center(
                            child: Text(
                              'Sem dispositivos cadastrados!!!',
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        : ListView.builder(
                            key: UniqueKey(),
                            itemCount: devicesProvider.items.length,
                            itemBuilder: (cxt, index) {
                              return DeviceItem(devicesProvider.items[index]);
                            },
                          ),
                  );
          },
        ),
      ),
    );
  }
}
