import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

class BleDeviceList extends StatefulWidget {
  final List<DiscoveredDevice> devices;

  const BleDeviceList({Key? key, required this.devices}) : super(key: key);

  @override
  _BleDeviceListState createState() => _BleDeviceListState();
}

class _BleDeviceListState extends State<BleDeviceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLE Devices'),
      ),
      body: ListView.builder(
        itemCount: widget.devices.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.devices[index].name),
            subtitle: Text(widget.devices[index].id),
            onTap: () {
              // Do something when a device is tapped
            },
          );
        },
      ),
    );
  }
}
