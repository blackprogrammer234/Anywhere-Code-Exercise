import 'package:flutter/material.dart';
import 'package:the_wire_character_viewer/pages/detail_view/detail_page.dart';
import 'package:the_wire_character_viewer/pages/detail_view/device_view/detail_page_phone_view.dart';
import 'package:the_wire_character_viewer/pages/detail_view/device_view/detail_page_tablet_view.dart';
import 'package:the_wire_character_viewer/utils/base_state.dart';
import 'package:the_wire_character_viewer/utils/layout_rule.dart';

class DetailPageController extends BasePage<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutRule(
      phone: DetailPagePhoneView(controller: this),
      tablet: DetailPageTabletView(controller: this),
    );
  }
}
