import 'package:flutter/material.dart';
import '../models/devices.dart';

class DeviceItem extends StatelessWidget {
  final Device device;

  DeviceItem(this.device);

  Color _getColor() {
    if (device.status == "ATIVO") {
      return Colors.green;
    }
    if (device.status == "DESATIVADO") {
      return Colors.blue;
    }
    if (device.status == "CONFIGURAR") {
      return Colors.orange;
    }
    if (device.status == "OFFLINE") {
      return Colors.red;
    }

    return null;
  }

  Icon _showIconStatus() {
    if (device.status == "ATIVO") {
      return Icon(
        Icons.check,
        color: Colors.white,
      );
    }

    if (device.status == "DESATIVADO") {
      return Icon(
        Icons.not_interested,
        color: Colors.white,
      );
    }
    if (device.status == "CONFIGURAR") {
      return Icon(
        Icons.settings,
        color: Colors.white,
      );
    }
    if (device.status == "OFFLINE") {
      return Icon(
        Icons.highlight_off,
        color: Colors.white,
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _getColor(),
          child: _showIconStatus(),
        ),
        title: Text('${device.local} - ${device.device}'),
        subtitle: Text('${device.status} - ${device.uptime}'),
        trailing: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        ),
      ),
    );
  }
}
