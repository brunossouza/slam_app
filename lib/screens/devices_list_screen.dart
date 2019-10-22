import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/devices.dart';

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
  @override
  Widget build(BuildContext context) {
    List<Device> _devicesList = Provider.of<DevicesProvider>(context).items;

    return Scaffold(
      // backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Lista de Dispositivos'),
        actions: <Widget>[
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
      body: Consumer<DevicesProvider>(
        builder: (cxt, snapshot, child) => Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            key: UniqueKey(),
            itemCount: _devicesList.length,
            itemBuilder: (cxt, index) {
              return DeviceItem(_devicesList[index]);
            },
          ),
        ),
      ),
    );
  }
}
