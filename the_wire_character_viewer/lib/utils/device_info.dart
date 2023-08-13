import 'package:flutter/widgets.dart';

class DeviceInfo {
  static const double isTablet = 600.0;

  String getDeviceType(BuildContext context) {
    if (MediaQuery.of(context).size.width >= isTablet) {
      return 'tablet';
    } else {
      return 'phone';
    }
  }
}
