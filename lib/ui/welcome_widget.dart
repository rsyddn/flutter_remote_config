// import 'package:firebase_remote_config/firebase_remote_config.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class WelcomeWidget extends AnimatedWidget {
//   WelcomeWidget({
//     required this.remoteConfig,
//   }) : super(listenable: remoteConfig);

//   final RemoteConfig remoteConfig;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Remote Config Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Welcome ${remoteConfig.getString('NAME')}'),
//             const SizedBox(
//               height: 20,
//             ),
//             Text('(${remoteConfig.getValue('NAME').source})'),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           try {
//             // Using zero duration to force fetching from remote server.
//             await remoteConfig.setConfigSettings(RemoteConfigSettings(
//               fetchTimeout: const Duration(seconds: 10),
//               minimumFetchInterval: Duration.zero,
//             ));
//             await remoteConfig.fetchAndActivate();
//           } on PlatformException catch (exception) {
//             // Fetch exception.
//             debugPrint(exception.message);
//           } catch (exception) {
//             debugPrint(
//                 'Unable to fetch remote config. Cached or default values will be '
//                 'used');
//             debugPrint(exception.toString());
//           }
//         },
//         child: const Icon(Icons.refresh),
//       ),
//     );
//   }
// }
