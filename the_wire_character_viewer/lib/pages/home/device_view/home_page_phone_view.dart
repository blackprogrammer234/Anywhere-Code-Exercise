import 'package:flutter/material.dart';
import 'package:the_wire_character_viewer/pages/home/home_page_controller.dart';

class HomePagePhoneView extends StatefulWidget {
  final HomePageController controller;
  const HomePagePhoneView({Key? key, required this.controller})
      : super(key: key);

  @override
  State<HomePagePhoneView> createState() => _HomePagePhoneView();
}

class _HomePagePhoneView extends State<HomePagePhoneView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Sample App")),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemBuilder: ((context, index) {
              return Container(
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(index.toString()),
                ),
              );
            }),
            itemCount: 10,
          )),
    ));
  }
}
