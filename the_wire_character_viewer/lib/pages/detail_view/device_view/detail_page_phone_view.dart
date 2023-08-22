import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:the_wire_character_viewer/models/the_wire_character_api_model.dart';
import 'package:the_wire_character_viewer/pages/detail_view/constant/detail_page_constant.dart';
import 'package:the_wire_character_viewer/pages/detail_view/detail_page_controller.dart';
import 'package:the_wire_character_viewer/pages/home/constant/home_page_constant.dart';

class DetailPagePhoneView extends StatelessWidget {
  final DetailPageController controller;

  const DetailPagePhoneView({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    var ex = controller.widget.data.icon;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(DetailPageConstant.Detail_Title),
            leading: const Icon(Icons.account_circle_rounded),
            actions: [backButton(context)],
          ),
          body: Container(
            child: Center(
              child: characterDetailDisplay(controller),
            ),
          )),
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

Widget characterDetailDisplay(DetailPageController controller) {
  var document = parse(controller.widget.data.result.toString());
  return Container(
    child: Card(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 20),
          Container(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      controller.widget.data.icon!.url.toString(),
                      width: 400,
                      height: 400,
                    ),
                    Container(height: 20),
                    Text(
                      controller.widget.data.text.toString(),
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(height: 10),
                    Text(
                      document.outerHtml,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[700],
                      ),
                    ),
                    Container(height: 20),
                    Text(
                      controller.widget.data.firstUrl.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[700],
                      ),
                    ),
                    Container(height: 20),
                  ]))
        ],
      ),
    ),
  );
}
