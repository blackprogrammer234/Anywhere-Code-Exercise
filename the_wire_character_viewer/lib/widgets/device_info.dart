import 'package:flutter/widgets.dart';

class DeviceInfo {
  static const double _isTablet = 600.0;

  static getDeviceType(BuildContext context) {
    if (MediaQuery.of(context).size.width >= _isTablet) {
      return 'tablet';
    } else {
      return 'phone';
    }
  }
}
