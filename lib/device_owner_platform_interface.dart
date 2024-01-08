import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'device_owner_method_channel.dart';

abstract class DeviceOwnerPlatform extends PlatformInterface {
  /// Constructs a DeviceOwnerPlatform.
  DeviceOwnerPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeviceOwnerPlatform _instance = MethodChannelDeviceOwner();

  /// The default instance of [DeviceOwnerPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeviceOwner].
  static DeviceOwnerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeviceOwnerPlatform] when
  /// they register themselves.
  static set instance(DeviceOwnerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
