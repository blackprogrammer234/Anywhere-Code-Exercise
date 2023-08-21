import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_wire_character_viewer/pages/detail_view/constant/detail_page_constant.dart';
import 'package:the_wire_character_viewer/pages/detail_view/detail_page_controller.dart';
import 'package:the_wire_character_viewer/pages/home/constant/home_page_constant.dart';

class DetailPagePhoneView extends StatefulWidget {
  final DetailPageController controller;
  const DetailPagePhoneView({super.key, required this.controller});

  @override
  State<DetailPagePhoneView> createState() => _DetailPagePhoneViewState();
}

class _DetailPagePhoneViewState extends State<DetailPagePhoneView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(DetailPageConstant.Detail_Title),
          leading: const Icon(Icons.account_circle_rounded),
          actions: [backButton(context)],
        ),
      ),
    );
  }
}

Widget backButton(BuildContext context) {
  return Container(
    child: IconButton(
        icon: Icon(Icons.keyboard_double_arrow_left),
        onPressed: () {
          var example = context.router;
          example.back();
        }),
  );
}
