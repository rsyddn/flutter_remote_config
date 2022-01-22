
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_remote_config/%20config/app.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Timer.periodic(const Duration(seconds: 1), (timer) async {
  //   final RemoteConfig remoteConfig = RemoteConfig.instance;
  //   await remoteConfig.fetchAndActivate();
  // });

  // runApp(MaterialApp(
  //     title: 'Remote Config Example',
  //     home: FutureBuilder<RemoteConfig>(
  //       future: setupRemoteConfig(),
  //       builder: (BuildContext context, AsyncSnapshot<RemoteConfig> snapshot) {
  //         return snapshot.hasData
  //             ? WelcomeWidget(remoteConfig: snapshot.requireData)
  //             : Container();
  //       },
  //     )));

  runApp(const Application());
}

// Future<RemoteConfig> setupRemoteConfig() async {
//   await Firebase.initializeApp();
//   final RemoteConfig remoteConfig = RemoteConfig.instance;
//   await remoteConfig.setConfigSettings(RemoteConfigSettings(
//     fetchTimeout: const Duration(seconds: 1),
//     minimumFetchInterval: const Duration(seconds: 1),
//   ));
//   RemoteConfigValue(null, ValueSource.valueStatic);
//   return remoteConfig;
// }

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_remote_config/firebase_remote_config.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_remote_config/%20config/app_config.dart';
// import 'package:get/get.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   RemoteConfig.instance.setConfigSettings(
//     RemoteConfigSettings(
//       fetchTimeout: const Duration(seconds: 1),
//       minimumFetchInterval: const Duration(seconds: 1),
//     ),
//   );
//   runApp(const Application());
// }

// class Application extends StatelessWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(home: Home());
//   }
// }

// class AppController extends GetxController {
//   final _appConfig = Rx<RemoteConfig?>(null);
//   final appConfig = Rx<AppConfig?>(null);

//   @override
//   void onInit() {
//     super.onInit();
//     _appConfig.value = RemoteConfig.instance;
//     update();
//     getRemoteConfig();
//   }

//   void getRemoteConfig() async {
//     await _appConfig.value?.fetchAndActivate();
//     appConfig.value = AppConfig(
//       version: _appConfig.value?.getString("VERSION") ?? "",
//       foodMenu: _appConfig.value?.getBool("FOOD_FEATURE") ?? false,
//     );
//     debugPrint('masuk');
//     update();
//   }
// }

// class Home extends StatelessWidget {
//   Home({Key? key}) : super(key: key);
//   final appController = Get.put(AppController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: RefreshIndicator(
//         onRefresh: () async {
//           appController.getRemoteConfig();
//         },
//         child: Stack(
//           children: [
//             ListView(),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Center(
//                   child: Text("Jesss"),
//                 ),
//                 AnotherWidget(),
//                 FoodMenu(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AnotherWidget extends StatelessWidget {
//   AnotherWidget({Key? key}) : super(key: key);
//   final appController = Get.find<AppController>();
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<AppController>(
//         init: appController,
//         builder: (_) {
//           return Card(
//             color: Colors.black12,
//             elevation: 0,
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Text(_.appConfig.value?.version ?? ""),
//             ),
//           );
//         });
//   }
// }

// class FoodMenu extends StatelessWidget {
//   FoodMenu({Key? key}) : super(key: key);
//   final appController = Get.find<AppController>();
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<AppController>(
//         init: appController,
//         builder: (_) {
//           return !(_.appConfig.value?.foodMenu ?? false)
//               ? const SizedBox()
//               : const Card(
//                   color: Colors.black12,
//                   elevation: 0,
//                   child: Padding(
//                     padding: EdgeInsets.all(16),
//                     child: Text("Menu"),
//                   ),
//                 );
//         });
//   }
// }
