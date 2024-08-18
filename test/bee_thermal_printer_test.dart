import 'package:flutter_test/flutter_test.dart';
// import 'package:bee_thermal_printer/bee_thermal_printer.dart';
import 'package:bee_thermal_printer/bee_thermal_printer_platform_interface.dart';
import 'package:bee_thermal_printer/bee_thermal_printer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBeeThermalPrinterPlatform
    with MockPlatformInterfaceMixin
    implements BeeThermalPrinterPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BeeThermalPrinterPlatform initialPlatform =
      BeeThermalPrinterPlatform.instance;

  test('$MethodChannelBeeThermalPrinter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBeeThermalPrinter>());
  });

  test('getPlatformVersion', () async {
    // BlueThermalPrinter beeThermalPrinterPlugin = BlueThermalPrinter();
    // MockBeeThermalPrinterPlatform fakePlatform = MockBeeThermalPrinterPlatform();
    // BeeThermalPrinterPlatform.instance = fakePlatform;

    // expect(await beeThermalPrinterPlugin.getPlatformVersion(), '42');
  });
}
