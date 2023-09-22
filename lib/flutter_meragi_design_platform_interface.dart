import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_meragi_design_method_channel.dart';

abstract class FlutterMeragiDesignPlatform extends PlatformInterface {
  /// Constructs a FlutterMeragiDesignPlatform.
  FlutterMeragiDesignPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMeragiDesignPlatform _instance = MethodChannelFlutterMeragiDesign();

  /// The default instance of [FlutterMeragiDesignPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMeragiDesign].
  static FlutterMeragiDesignPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMeragiDesignPlatform] when
  /// they register themselves.
  static set instance(FlutterMeragiDesignPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
