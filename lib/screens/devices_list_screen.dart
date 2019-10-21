import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/devices.dart';

import '../providers/devices_provider.dart';
import '../widgets/device_item.dart';
import '../widgets/custom_drawer.dart';

class DevicesListScreen extends StatefulWidget {
  @override
  _DevicesListScreenState createState() => _DevicesListScreenState();
}

class _DevicesListScreenState extends State<DevicesListScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Device> _devicesList =
        Provider.of<DevicesProvider>(context, listen: false).items;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Lista de Dispositivos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      drawer: CustomDrawer(),
      body: Consumer<DevicesProvider>(
        builder: (cxt, snapshot, child) => Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
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
