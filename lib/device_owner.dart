
import 'device_owner_platform_interface.dart';

class DeviceOwner {
  Future<String?> getPlatformVersion() {
    return DeviceOwnerPlatform.instance.getPlatformVersion();
  }
}
