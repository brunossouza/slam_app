import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/devices.dart';

class DevicesProvider extends ChangeNotifier {
  List<Device> _items = [];
  String _statusFilter;
  bool _loadSampleData = false;

  Future<void> fetchAndSetDevices() async {
    _items = [];

    if (_loadSampleData) {
      _items = [
        Device(
          id: 1,
          registryDate: DateTime.now(),
          local: "sala",
          device: "TV",
          token: "as5d48d82ddad",
          status: "ATIVO",
        ),
        Device(
          id: 2,
          registryDate: DateTime.now(),
          local: "sala",
          device: "video game",
          token: "as5d48d82ddad",
          status: "CONFIGURAR",
        ),
        Device(
          id: 3,
          registryDate: DateTime.now(),
          local: "Quarto",
          device: "Computador",
          token: "as5d48d82ddad",
          status: "OFFLINE",
        ),
        Device(
          id: 4,
          registryDate: DateTime.now(),
          local: "cozinha",
          device: "Microondas",
          token: "as5d48d82ddad",
          status: "DESATIVADO",
        ),
        Device(
          id: 5,
          registryDate: DateTime.now(),
          local: "cozinha",
          device: "fogão",
          token: "as5d48d82ddad",
          status: "DESATIVADO",
        ),
        Device(
          id: 6,
          registryDate: DateTime.now(),
          local: "sala",
          device: "TV",
          token: "as5d48d82ddad",
          status: "ATIVO",
        ),
        Device(
          id: 7,
          registryDate: DateTime.now(),
          local: "sala",
          device: "video game",
          token: "as5d48d82ddad",
          status: "CONFIGURAR",
        ),
        Device(
          id: 8,
          registryDate: DateTime.now(),
          local: "Quarto",
          device: "Computador",
          token: "as5d48d82ddad",
          status: "OFFLINE",
        ),
        Device(
          id: 9,
          registryDate: DateTime.now(),
          local: "cozinha",
          device: "Microondas",
          token: "as5d48d82ddad",
          status: "DESATIVADO",
        ),
        Device(
          id: 10,
          registryDate: DateTime.now(),
          local: "cozinha",
          device: "fogão",
          token: "as5d48d82ddad",
          status: "DESATIVADO",
        ),
        Device(
          id: 11,
          registryDate: DateTime.now(),
          local: "sala",
          device: "TV",
          token: "as5d48d82ddad",
          status: "ATIVO",
        ),
        Device(
          id: 12,
          registryDate: DateTime.now(),
          local: "sala",
          device: "video game",
          token: "as5d48d82ddad",
          status: "CONFIGURAR",
        ),
        Device(
          id: 13,
          registryDate: DateTime.now(),
          local: "Quarto",
          device: "Computador",
          token: "as5d48d82ddad",
          status: "OFFLINE",
        ),
        Device(
          id: 14,
          registryDate: DateTime.now(),
          local: "cozinha",
          device: "Microondas",
          token: "as5d48d82ddad",
          status: "DESATIVADO",
        ),
        Device(
          id: 15,
          registryDate: DateTime.now(),
          local: "cozinha",
          device: "fogão",
          token: "as5d48d82ddad",
          status: "DESATIVADO",
        ),
        Device(
          id: 16,
          registryDate: DateTime.now(),
          local: "sala",
          device: "TV",
          token: "as5d48d82ddad",
          status: "ATIVO",
        ),
        Device(
          id: 17,
          registryDate: DateTime.now(),
          local: "sala",
          device: "video game",
          token: "as5d48d82ddad",
          status: "CONFIGURAR",
        ),
        Device(
          id: 16,
          registryDate: DateTime.now(),
          local: "Quarto",
          device: "Computador",
          token: "as5d48d82ddad",
          status: "OFFLINE",
        ),
        Device(
          id: 18,
          registryDate: DateTime.now(),
          local: "cozinha",
          device: "Microondas",
          token: "as5d48d82ddad",
          status: "DESATIVADO",
        ),
        Device(
          id: 20,
          registryDate: DateTime.now(),
          local: "cozinha",
          device: "fogão",
          token: "as5d48d82ddad",
          status: "DESATIVADO",
        ),
      ];
      return;
    }

    final url = 'http://192.168.2.135:5555/api/v1/devices';
    final List<Device> devicesLoaded = [];

    try {
      final response = await http.get(url);

      final dataExtract = json.decode(response.body);

      for (var item in dataExtract) {
        devicesLoaded.add(
          Device(
            id: item['id'] == null ? 'SEM REGISTO' : item['id'],
            device: item['device'] == null ? 'SEM REGISTO' : item['device'],
            local: item['local'] == null ? 'SEM REGISTO' : item['local'],
            status: item['status'] == null ? 'SEM REGISTO' : item['status'],
            token: item['token'] == null ? 'SEM REGISTO' : item['token'],
            registryDate: item['dateActivation'] == null
                ? DateTime.now()
                : DateTime.fromMillisecondsSinceEpoch(item['dateActivation']),
          ),
        );
      }

      _items = devicesLoaded;

      notifyListeners();
    } catch (error) {
      // TODO: tratamento de erros

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

  void loadSampleData(bool loadSample) {
    _loadSampleData = loadSample;
    notifyListeners();
  }

  bool get isLoadSampleData {
    return _loadSampleData;
  }
}
