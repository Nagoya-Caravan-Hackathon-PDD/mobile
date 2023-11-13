import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:github_go_mobile/styles/theme.dart';
import 'package:github_go_mobile/widgets/ble_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ble = FlutterReactiveBle();
  List<DiscoveredDevice> devices = [];

  @override
  void initState() {
    super.initState();
    ble.statusStream.listen((status) {
      if (status == BleStatus.ready) {
        scanForDevices();
      }
    });
  }

  void writeCharacteristic(DiscoveredDevice device) async {
    final characteristic = QualifiedCharacteristic(
      characteristicId: Uuid.parse("49736378-3976-4db4-8ce9-dc3a288774bc"),
      serviceId: Uuid.parse("2e8eeaf1-048f-4331-a021-e2350340afc2"),
      deviceId: device.id,
    );
    final data = [
      0x01,
      0x02,
      0x03,
      0x04
    ]; // Replace with the data you want to send
    await ble.writeCharacteristicWithResponse(characteristic, value: data);
  }

  void receiveData(DiscoveredDevice device) async {
    final characteristic = QualifiedCharacteristic(
      characteristicId: Uuid.parse("49736378-3976-4db4-8ce9-dc3a288774bc"),
      serviceId: Uuid.parse("2e8eeaf1-048f-4331-a021-e2350340afc2"),
      deviceId: device.id,
    );
    ble.subscribeToCharacteristic(characteristic).listen((data) {
      print(data);
    });
  }

  void scanForDevices() async {
    await for (var device in ble.scanForDevices(withServices: [
      // Uuid.parse("2e8eeaf1-048f-4331-a021-e2350340afc2")
    ], scanMode: ScanMode.lowLatency)) {
      setState(() {
        // device.nameが空ならreturn
        // if (device.name.isEmpty) return;
        if (devices.any((element) => element.id == device.id)) return;
        devices.add(device);
        ble.connectToDevice(id: device.id).listen((connectionState) {
          print("connectionState = ${connectionState.connectionState}");
          if (connectionState.connectionState ==
              DeviceConnectionState.connected) {
            print("connected");
            writeCharacteristic(device);
          }
        });
        print("device.serviceData = ${device.serviceData}");
        print("device.manufacturerData = ${device.manufacturerData}");
        print("device.id = ${device.id}");
        print("device.rssi = ${device.rssi}");
        print("device.connectable = ${device.connectable}");
        print("device.name = ${device.name}");
        print("device.serviceUuids = ${device.serviceUuids}");
        print("-----");
      });
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Github Monster',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ThemeColor.secondary),
          useMaterial3: true,
        ),
        home: BleDeviceList(devices: devices));
  }
}
