import 'package:flutter/material.dart';
import 'package:the_wire_character_viewer/widgets/device_info.dart';

class LayoutRule extends StatelessWidget {
  final Widget? phone;
  final Widget? tablet;
  final Widget unknowDevice;

  const LayoutRule(
      {Key? key,
      this.phone,
      this.tablet,
      this.unknowDevice = const SizedBox.shrink()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (DeviceInfo.getDeviceType(context) == "phone") {
      return phone ?? unknowDevice;
    } else {
      return tablet ?? unknowDevice;
    }
  }
}
