import 'package:flutter/material.dart';
import 'package:flutter_remote_config/%20config/controller/home_controller.dart';
import 'package:flutter_remote_config/%20config/firebase_services/remote_config_services.dart';
import 'package:get/get.dart';

class ReWelcomeWidget extends StatelessWidget {
  ReWelcomeWidget({Key? key}) : super(key: key);
  final appController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: appController,
      builder: (viewController) {
        return Card(
          color: Colors.black12,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(viewController.appConfig.value?.name ?? ""),
          ),
        );
      },
    );
  }
}
