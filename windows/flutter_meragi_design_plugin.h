#ifndef FLUTTER_PLUGIN_FLUTTER_MERAGI_DESIGN_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_MERAGI_DESIGN_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_meragi_design {

class FlutterMeragiDesignPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterMeragiDesignPlugin();

  virtual ~FlutterMeragiDesignPlugin();

  // Disallow copy and assign.
  FlutterMeragiDesignPlugin(const FlutterMeragiDesignPlugin&) = delete;
  FlutterMeragiDesignPlugin& operator=(const FlutterMeragiDesignPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_meragi_design

#endif  // FLUTTER_PLUGIN_FLUTTER_MERAGI_DESIGN_PLUGIN_H_
