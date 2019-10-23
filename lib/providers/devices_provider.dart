import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/devices.dart';

class DevicesProvider extends ChangeNotifier {
  List<Device> _items = [
    // Device(
    //   id: 1,
    //   registryDate: DateTime.now(),
    //   local: "sala",
    //   device: "TV",
    //   token: "as5d48d82ddad",
    //   status: "ATIVO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 2,
    //   registryDate: DateTime.now(),
    //   local: "sala",
    //   device: "video game",
    //   token: "as5d48d82ddad",
    //   status: "CONFIGURAR",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 3,
    //   registryDate: DateTime.now(),
    //   local: "Quarto",
    //   device: "Computador",
    //   token: "as5d48d82ddad",
    //   status: "OFFLINE",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 4,
    //   registryDate: DateTime.now(),
    //   local: "cozinha",
    //   device: "Microondas",
    //   token: "as5d48d82ddad",
    //   status: "DESATIVADO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 5,
    //   registryDate: DateTime.now(),
    //   local: "cozinha",
    //   device: "fogão",
    //   token: "as5d48d82ddad",
    //   status: "DESATIVADO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 6,
    //   registryDate: DateTime.now(),
    //   local: "sala",
    //   device: "TV",
    //   token: "as5d48d82ddad",
    //   status: "ATIVO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 7,
    //   registryDate: DateTime.now(),
    //   local: "sala",
    //   device: "video game",
    //   token: "as5d48d82ddad",
    //   status: "CONFIGURAR",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 8,
    //   registryDate: DateTime.now(),
    //   local: "Quarto",
    //   device: "Computador",
    //   token: "as5d48d82ddad",
    //   status: "OFFLINE",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 9,
    //   registryDate: DateTime.now(),
    //   local: "cozinha",
    //   device: "Microondas",
    //   token: "as5d48d82ddad",
    //   status: "DESATIVADO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 10,
    //   registryDate: DateTime.now(),
    //   local: "cozinha",
    //   device: "fogão",
    //   token: "as5d48d82ddad",
    //   status: "DESATIVADO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 11,
    //   registryDate: DateTime.now(),
    //   local: "sala",
    //   device: "TV",
    //   token: "as5d48d82ddad",
    //   status: "ATIVO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 12,
    //   registryDate: DateTime.now(),
    //   local: "sala",
    //   device: "video game",
    //   token: "as5d48d82ddad",
    //   status: "CONFIGURAR",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 13,
    //   registryDate: DateTime.now(),
    //   local: "Quarto",
    //   device: "Computador",
    //   token: "as5d48d82ddad",
    //   status: "OFFLINE",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 14,
    //   registryDate: DateTime.now(),
    //   local: "cozinha",
    //   device: "Microondas",
    //   token: "as5d48d82ddad",
    //   status: "DESATIVADO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 15,
    //   registryDate: DateTime.now(),
    //   local: "cozinha",
    //   device: "fogão",
    //   token: "as5d48d82ddad",
    //   status: "DESATIVADO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 16,
    //   registryDate: DateTime.now(),
    //   local: "sala",
    //   device: "TV",
    //   token: "as5d48d82ddad",
    //   status: "ATIVO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 17,
    //   registryDate: DateTime.now(),
    //   local: "sala",
    //   device: "video game",
    //   token: "as5d48d82ddad",
    //   status: "CONFIGURAR",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 16,
    //   registryDate: DateTime.now(),
    //   local: "Quarto",
    //   device: "Computador",
    //   token: "as5d48d82ddad",
    //   status: "OFFLINE",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 18,
    //   registryDate: DateTime.now(),
    //   local: "cozinha",
    //   device: "Microondas",
    //   token: "as5d48d82ddad",
    //   status: "DESATIVADO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
    // Device(
    //   id: 20,
    //   registryDate: DateTime.now(),
    //   local: "cozinha",
    //   device: "fogão",
    //   token: "as5d48d82ddad",
    //   status: "DESATIVADO",
    //   uptime: "31/12/1969 22:03:33",
    // ),
  ];
  String _statusFilter;

  Future<void> fetchAndSetDevices() async {
    final url = 'http://192.168.2.92:8080/api/v1/devices';
    final List<Device> devicesLoaded = [];

    try {
      final response = await http.get(url);

      final dataExtract = json.decode(response.body);

      print(dataExtract);

      for (var item in dataExtract) {
        devicesLoaded.add(
          Device(
            id: item['id'] == null ? 'SEM REGISTO' : item['id'],
            device: item['device'] == null ? 'SEM REGISTO' : item['device'],
            local: item['local'] == null ? 'SEM REGISTO' : item['local'],
            status: item['status'] == null ? 'SEM REGISTO' : item['status'],
            token: item['token'] == null ? 'SEM REGISTO' : item['token'],
            uptime: item['uptime'] == null ? 'SEM REGISTO' : item['uptime'],
          ),
        );
      }

      _items = devicesLoaded;

      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  List<Device> get items {
    if (_statusFilter != null &&
        _statusFilter.isNotEmpty &&
        _statusFilter != 'TODOS') {
      return _items.where((item) => item.status == _statusFilter).toList();
    }
    return [..._items];
  }

  void filterByStatus(String status) {
    _statusFilter = status;
    notifyListeners();
  }
}
