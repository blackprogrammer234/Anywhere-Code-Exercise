import 'package:bloc/bloc.dart';
import 'package:the_wire_character_viewer/bloc/the_wire_character_viewer_event.dart';
import 'package:the_wire_character_viewer/bloc/the_wire_character_viewer_state.dart';
import 'package:the_wire_character_viewer/models/the_wire_character_api_model.dart';
import 'package:the_wire_character_viewer/repositories/the_wire_character_vieer_repository.dart';
import 'package:the_wire_character_viewer/usecases/the_wire_character_api_usecases.dart';

class TheWireCharacterBloc
    extends Bloc<TheWireCharacterModelEvent, TheWireCharacterModelState> {
  final TheWireCharacterViewerReposity? theWireCharacterViewUsecase =
      TheWireCharacterViewerReposity();

  TheWireCharacterBloc() : super(TheWireCharacterModelEmpty()) {
    on<TheWireCharacterModelFetch>((event, emit) async {
      emit(TheWireCharacterModelLoading());
      try {
        final TheWireCharacterModel theWireCharacterModel =
            await theWireCharacterViewUsecase!.fetchTheWireCharacter();
        emit(TheWireCharacterModelLoaded(
            theWireCharacterModel: theWireCharacterModel));
      } catch (e) {
        emit(TheWireCharacterModelError());
      }
    });
  }
}
