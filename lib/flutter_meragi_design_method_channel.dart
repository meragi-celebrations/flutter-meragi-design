import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_meragi_design_platform_interface.dart';

/// An implementation of [FlutterMeragiDesignPlatform] that uses method channels.
class MethodChannelFlutterMeragiDesign extends FlutterMeragiDesignPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_meragi_design');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
