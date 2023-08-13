import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_wire_character_viewer/routes/navigation_route_generator.dart';
import 'package:the_wire_character_viewer/widgets/device_info.dart';

void main() {
  runApp(TheWireCharacterViewerApp());
}

class TheWireCharacterViewerApp extends StatelessWidget {
  late String device;
  final _appRouter = NavigationRouteGenerator();
  @override
  Widget build(BuildContext context) {
    device = DeviceInfo.getDeviceType(context);
    if (device == "tablet") {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
    } else {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    }

    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}
