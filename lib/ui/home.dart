import 'package:flutter/material.dart';
import 'package:flutter_remote_config/%20config/controller/home_controller.dart';
import 'package:flutter_remote_config/%20config/firebase_services/remote_config_services.dart';
import 'package:flutter_remote_config/ui/re_welcome_widget.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final appController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          RemoteConfigService.getRemoteConfig();
        },
        child: Stack(
          children: [
            ListView(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text("Jesss"),
                ),
                ReWelcomeWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
