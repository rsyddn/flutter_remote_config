import 'dart:async';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_remote_config/%20config/app_config.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class RemoteConfigService {
  static RemoteConfig? _rc;
  static AppConfig? appConfig;

  static init() {
    _rc = RemoteConfig.instance;
    getRemoteConfig();

    Timer.periodic(Duration(hours: 1), (timer) {
      getRemoteConfig();
    });
  }

  static void getRemoteConfig() async {
    await _rc!.fetchAndActivate();
    appConfig = AppConfig(
      name: _rc!.getString("NAME"),
    );

    onAppConfigChanged();
  }

  static Function onAppConfigChanged = () {};
}
