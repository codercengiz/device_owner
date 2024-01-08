# Device Owner Plugin

## Description
This plugin provides an interface to interact with Android's DevicePolicyManager API. It is designed exclusively for Android platform to facilitate device management tasks.

## Platform Support
**Note:** This plugin only supports the Android platform.

### Android
- Full support for Android functionalities via DevicePolicyManager.

### iOS, Web, and Other Platforms
- Not supported. This plugin is intended solely for Android devices.

## Getting Started
To use this plugin, add `device_owner` as a dependency in your `pubspec.yaml` file. Make sure you have set up your Android project to handle the specific requirements of DevicePolicyManager.

```yaml
dependencies:
  device_owner: ^0.0.1
```

## Usage
To use the plugin, import it into your Flutter project:

```dart
import 'package:device_owner/device_owner.dart';
```

Then, utilize the available methods to interact with DevicePolicyManager on Android. Please refer to the example project for detailed usage.