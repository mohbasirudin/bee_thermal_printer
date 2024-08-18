import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bee_thermal_printer_platform_interface.dart';

/// An implementation of [BeeThermalPrinterPlatform] that uses method channels.
class MethodChannelBeeThermalPrinter extends BeeThermalPrinterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bee_thermal_printer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
