import 'package:flutter/material.dart';
import 'package:the_wire_character_viewer/pages/home/home_page_controller.dart';

class HomePageTabletView extends StatefulWidget {
  final HomePageController controller;
  const HomePageTabletView({Key? key, required this.controller})
      : super(key: key);

  @override
  State<HomePageTabletView> createState() => _HomePageTabletView();
}

class _HomePageTabletView extends State<HomePageTabletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Sample App")),
        body: const Center(
          child: Text('Hello Tablet'),
        ));
  }
}
