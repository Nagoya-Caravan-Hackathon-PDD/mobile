import 'dart:async';
import 'dart:developer';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

class BLEManager {
  final FlutterReactiveBle _ble = FlutterReactiveBle();
  bool scanStarted = false;
  bool permGranted = false;
  List<DiscoveredDevice> discoveredDevices = [];
  List<Uuid> discoveredCharacteristic = [];
  Uuid? connectedDeviceServiceId;
  String? connectedDeviceDeviceId;

  DeviceConnectionState deviceConnectionState =
      DeviceConnectionState.disconnected;
  StreamSubscription? _scanDeviceStream;

  // Discovering BLE devices
  Future<void> discoverDevices() async {
    if (!scanStarted) {
      scanStarted = true;
      discoveredCharacteristic = [];

      _scanDeviceStream =
          _ble.scanForDevices(withServices: []).listen((device) {
        if (device.name != "" &&
            (discoveredDevices
                .where((element) => element.name == device.name)
                .isEmpty)) {
          discoveredDevices.add(device);
        }
      });

      await Future.delayed(const Duration(seconds: 10), (() {
        _scanDeviceStream!.cancel();
        scanStarted = false;
      }));
    }
  }

  void connectToScannedDevice(String deviceId, Uuid serviceId) {
    discoveredCharacteristic = [];
    connectedDeviceServiceId = serviceId;
    connectedDeviceDeviceId = deviceId;

    _ble
        .connectToDevice(
      id: deviceId,
      connectionTimeout: const Duration(seconds: 10),
    )
        .listen((connectionState) {
      if (deviceConnectionState != connectionState.connectionState) {
        deviceConnectionState = connectionState.connectionState;
      }
      if (connectionState.connectionState == DeviceConnectionState.connected) {
        // discoverServices(deviceId: deviceId);
      }
      log("//? connected device state ==> $connectionState ");
    }, onError: (Object error) {
      log("//? connected device error ==> $error ");
    });
  }

  // Future<List<Uuid>> discoverServices({
  //   required String deviceId,
  // }) async {
  //   List<Uuid> characteristicIds = [];
  //   await _ble.getDiscoveredServices(deviceId).then((discoveredService) {
  //     for (DiscoveredService d in discoveredService) {
  //       for (DiscoveredCharacteristic discoveredCharacteristic
  //           in d.characteristics) {
  //         characteristicIds.add(discoveredCharacteristic.characteristicId);
  //       }
  //     }
  //   });
  //   discoveredCharacteristic = characteristicIds.toSet().toList();
  //   return discoveredCharacteristic;
  // }
}
