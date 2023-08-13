import 'package:flutter/cupertino.dart';
import 'package:the_wire_character_viewer/pages/home/device_view/home_page_phone_view.dart';
import 'package:the_wire_character_viewer/pages/home/device_view/home_page_tablet_view.dart';
import 'package:the_wire_character_viewer/pages/home/home_page.dart';
import 'package:the_wire_character_viewer/utils/base_state.dart';
import 'package:the_wire_character_viewer/utils/layout_rule.dart';

class HomePageController extends BasePage<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutRule(
      phone: HomePagePhoneView(controller: this),
      tablet: HomePageTabletView(controller: this),
    );
  }
}
