import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:the_wire_character_viewer/bloc/the_wire_character_viewer_bloc.dart';
import 'package:the_wire_character_viewer/pages/detail_view/detail_page_controller.dart';

@RoutePage()
class DetailPage extends StatefulWidget {
  //final TheWireCharacterBloc bloc;
  const DetailPage({super.key});

  @override
  DetailPageController createState() => DetailPageController();
}
