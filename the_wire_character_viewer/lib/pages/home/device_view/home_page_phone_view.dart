import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_wire_character_viewer/bloc/the_wire_character_viewer_bloc.dart';
import 'package:the_wire_character_viewer/bloc/the_wire_character_viewer_event.dart';
import 'package:the_wire_character_viewer/bloc/the_wire_character_viewer_state.dart';
import 'package:the_wire_character_viewer/models/the_wire_character_api_model.dart';
import 'package:the_wire_character_viewer/pages/home/constant/home_page_constant.dart';
import 'package:the_wire_character_viewer/pages/home/home_page_controller.dart';
import 'package:the_wire_character_viewer/routes/navigation_route_generator.dart';
import 'package:the_wire_character_viewer/usecases/the_wire_character_api_usecases.dart';

class HomePagePhoneView extends StatefulWidget {
  final HomePageController controller;
  const HomePagePhoneView({Key? key, required this.controller})
      : super(key: key);

  @override
  State<HomePagePhoneView> createState() => _HomePagePhoneView();
}

class _HomePagePhoneView extends State<HomePagePhoneView> {
  final TheWireCharacterBloc bloc = TheWireCharacterBloc();

  @override
  void initState() {
    bloc.add(TheWireCharacterModelFetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(HomePageConstant.Home_Title),
        leading: const Icon(Icons.account_circle_rounded),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: BlocProvider(
          create: (context) => bloc,
          child: BlocListener<TheWireCharacterBloc, TheWireCharacterModelState>(
              listener: (context, state) {
            if (state is TheWireCharacterModelError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Something wrong"),
              ));
            }
          }, child:
                  BlocBuilder<TheWireCharacterBloc, TheWireCharacterModelState>(
            builder: (context, state) {
              if (state is TheWireCharacterModelLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is TheWireCharacterModelEmpty) {
                return Center(child: CircularProgressIndicator());
              } else if (state is TheWireCharacterModelLoaded) {
                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: ((context, index) {
                    return Container(
                      child: PhysicalShape(
                        color: Colors.white,
                        elevation: 18,
                        shadowColor: Colors.white,
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            subtitle: Text(state.theWireCharacterModel
                                .relatedTopices![index].text
                                .toString()),
                            trailing: IconButton(
                              icon: Icon(Icons.more_vert),
                              onPressed: () =>
                                  context.router.push(DetailRoute()),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                  itemCount: state.theWireCharacterModel.relatedTopices!.length,
                );
              } else if (state is TheWireCharacterModelError) {
                return Center(
                  child: Text("Something went wrong"),
                );
              } else {
                return Container();
              }
            },
          )),
        ),
      ),
    ));
  }
}
