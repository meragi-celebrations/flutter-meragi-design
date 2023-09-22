#include "include/flutter_meragi_design/flutter_meragi_design_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_meragi_design_plugin.h"

void FlutterMeragiDesignPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_meragi_design::FlutterMeragiDesignPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
