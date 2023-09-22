
import 'flutter_meragi_design_platform_interface.dart';

class FlutterMeragiDesign {
  Future<String?> getPlatformVersion() {
    return FlutterMeragiDesignPlatform.instance.getPlatformVersion();
  }
}
