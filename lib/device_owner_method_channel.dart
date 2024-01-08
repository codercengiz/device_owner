import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'device_owner_platform_interface.dart';

/// An implementation of [DeviceOwnerPlatform] that uses method channels.
class MethodChannelDeviceOwner extends DeviceOwnerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('device_owner');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
