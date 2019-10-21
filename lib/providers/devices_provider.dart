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
  ];

  List<Device> get items {
    return [..._items];
  }
}
