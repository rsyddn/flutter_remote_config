import 'package:flutter/material.dart';
import 'package:flutter_remote_config/ui/home.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Home());
  }
}
