import 'package:flutter/material.dart';
import '../models/devices.dart';

class DevicesProvider extends ChangeNotifier {
  List<Device> _items = [
    Device(
      id: 1,
      registryDate: DateTime.now(),
      local: "sala",
      device: "TV",
      token: "as5d48d82ddad",
      status: "ATIVO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 2,
      registryDate: DateTime.now(),
      local: "sala",
      device: "video game",
      token: "as5d48d82ddad",
      status: "CONFIGURAR",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 3,
      registryDate: DateTime.now(),
      local: "Quarto",
      device: "Computador",
      token: "as5d48d82ddad",
      status: "OFFLINE",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 4,
      registryDate: DateTime.now(),
      local: "cozinha",
      device: "Microondas",
      token: "as5d48d82ddad",
      status: "DESATIVADO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 5,
      registryDate: DateTime.now(),
      local: "cozinha",
      device: "fogão",
      token: "as5d48d82ddad",
      status: "DESATIVADO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 6,
      registryDate: DateTime.now(),
      local: "sala",
      device: "TV",
      token: "as5d48d82ddad",
      status: "ATIVO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 7,
      registryDate: DateTime.now(),
      local: "sala",
      device: "video game",
      token: "as5d48d82ddad",
      status: "CONFIGURAR",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 8,
      registryDate: DateTime.now(),
      local: "Quarto",
      device: "Computador",
      token: "as5d48d82ddad",
      status: "OFFLINE",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 9,
      registryDate: DateTime.now(),
      local: "cozinha",
      device: "Microondas",
      token: "as5d48d82ddad",
      status: "DESATIVADO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 10,
      registryDate: DateTime.now(),
      local: "cozinha",
      device: "fogão",
      token: "as5d48d82ddad",
      status: "DESATIVADO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 11,
      registryDate: DateTime.now(),
      local: "sala",
      device: "TV",
      token: "as5d48d82ddad",
      status: "ATIVO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 12,
      registryDate: DateTime.now(),
      local: "sala",
      device: "video game",
      token: "as5d48d82ddad",
      status: "CONFIGURAR",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 13,
      registryDate: DateTime.now(),
      local: "Quarto",
      device: "Computador",
      token: "as5d48d82ddad",
      status: "OFFLINE",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 14,
      registryDate: DateTime.now(),
      local: "cozinha",
      device: "Microondas",
      token: "as5d48d82ddad",
      status: "DESATIVADO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 15,
      registryDate: DateTime.now(),
      local: "cozinha",
      device: "fogão",
      token: "as5d48d82ddad",
      status: "DESATIVADO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 16,
      registryDate: DateTime.now(),
      local: "sala",
      device: "TV",
      token: "as5d48d82ddad",
      status: "ATIVO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 17,
      registryDate: DateTime.now(),
      local: "sala",
      device: "video game",
      token: "as5d48d82ddad",
      status: "CONFIGURAR",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 16,
      registryDate: DateTime.now(),
      local: "Quarto",
      device: "Computador",
      token: "as5d48d82ddad",
      status: "OFFLINE",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 18,
      registryDate: DateTime.now(),
      local: "cozinha",
      device: "Microondas",
      token: "as5d48d82ddad",
      status: "DESATIVADO",
      uptime: "31/12/1969 22:03:33",
    ),
    Device(
      id: 20,
      registryDate: DateTime.now(),
      local: "cozinha",
      device: "fogão",
      token: "as5d48d82ddad",
      status: "DESATIVADO",
      uptime: "31/12/1969 22:03:33",
    ),
  ];
  String _statusFilter;

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
