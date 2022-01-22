import 'package:flutter_remote_config/%20config/app_config.dart';
import 'package:flutter_remote_config/%20config/firebase_services/remote_config_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    RemoteConfigService.init();
    RemoteConfigService.onAppConfigChanged = () {
      appConfig.value = RemoteConfigService.appConfig;
    };
    super.onInit();
  }

  var appConfig = Rx<AppConfig?>(null);
}
