import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bee_thermal_printer_method_channel.dart';

abstract class BeeThermalPrinterPlatform extends PlatformInterface {
  /// Constructs a BeeThermalPrinterPlatform.
  BeeThermalPrinterPlatform() : super(token: _token);

  static final Object _token = Object();

  static BeeThermalPrinterPlatform _instance = MethodChannelBeeThermalPrinter();

  /// The default instance of [BeeThermalPrinterPlatform] to use.
  ///
  /// Defaults to [MethodChannelBeeThermalPrinter].
  static BeeThermalPrinterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BeeThermalPrinterPlatform] when
  /// they register themselves.
  static set instance(BeeThermalPrinterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
