class Device {
  final int id;
  final String local;
  final String device;
  final String token;
  final String status;
  final DateTime registryDate;
  final String uptime;

  Device({
    this.id,
    this.local,
    this.device,
    this.token,
    this.status,
    this.registryDate,
    this.uptime,
  });
}
