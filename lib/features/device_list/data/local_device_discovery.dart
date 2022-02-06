import 'package:injectable/injectable.dart';
import 'package:wled/features/wled_device/wled_device.dart';

@injectable
class LocalDeviceDiscovery {
  LocalDeviceDiscovery();



  /// fetch all the locally saved WledDevices
  List<WledDevice> getWledDevice() {
    return [];
  }

  /// adds a Wled device to the local storage only if it isn't saved already
  void saveWledDevice(WledDevice device) {
  
  }

  /// attempts to remove WledDevice from the local storage
  void removeWledDevice(WledDevice d) {
  
  }

  void updateWledDevice(WledDevice d) {
   
  }
}
