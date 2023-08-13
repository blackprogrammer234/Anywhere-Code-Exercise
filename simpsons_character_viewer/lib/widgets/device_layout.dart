import 'package:flutter/widgets.dart';

class DeviceLayout extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget others;
  static const double isTablet = 600.0;

  const DeviceLayout({
    Key? key,
    this.mobile,
    this.tablet,
    this.others = const SizedBox.shrink(),
  }) : super(key: key);

  String getDeviceType(BuildContext context) {
    if (MediaQuery.of(context).size.width >= isTablet) {
      return 'tablet';
    } else {
      return 'phone';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (getDeviceType(context) == 'phone') {
      return tablet ?? others;
    } else {
      return mobile ?? others;
    }
  }
}
