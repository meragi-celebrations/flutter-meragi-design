import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_meragi_design/flutter_meragi_design.dart';
import 'package:flutter_meragi_design/flutter_meragi_design_platform_interface.dart';
import 'package:flutter_meragi_design/flutter_meragi_design_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterMeragiDesignPlatform
    with MockPlatformInterfaceMixin
    implements FlutterMeragiDesignPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterMeragiDesignPlatform initialPlatform = FlutterMeragiDesignPlatform.instance;

  test('$MethodChannelFlutterMeragiDesign is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterMeragiDesign>());
  });

  test('getPlatformVersion', () async {
    FlutterMeragiDesign flutterMeragiDesignPlugin = FlutterMeragiDesign();
    MockFlutterMeragiDesignPlatform fakePlatform = MockFlutterMeragiDesignPlatform();
    FlutterMeragiDesignPlatform.instance = fakePlatform;

    expect(await flutterMeragiDesignPlugin.getPlatformVersion(), '42');
  });
}
