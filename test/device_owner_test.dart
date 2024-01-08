import 'package:flutter_test/flutter_test.dart';
import 'package:device_owner/device_owner.dart';
import 'package:device_owner/device_owner_platform_interface.dart';
import 'package:device_owner/device_owner_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeviceOwnerPlatform
    with MockPlatformInterfaceMixin
    implements DeviceOwnerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeviceOwnerPlatform initialPlatform = DeviceOwnerPlatform.instance;

  test('$MethodChannelDeviceOwner is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeviceOwner>());
  });

  test('getPlatformVersion', () async {
    DeviceOwner deviceOwnerPlugin = DeviceOwner();
    MockDeviceOwnerPlatform fakePlatform = MockDeviceOwnerPlatform();
    DeviceOwnerPlatform.instance = fakePlatform;

    expect(await deviceOwnerPlugin.getPlatformVersion(), '42');
  });
}
