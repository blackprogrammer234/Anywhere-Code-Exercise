import 'package:equatable/equatable.dart';
import 'package:the_wire_character_viewer/models/the_wire_character_api_model.dart';

abstract class TheWireCharacterModelState extends Equatable {
  const TheWireCharacterModelState();

  @override
  List<Object?> get props => [];
}

class TheWireCharacterModelEmpty extends TheWireCharacterModelState {}

class TheWireCharacterModelLoading extends TheWireCharacterModelState {}

class TheWireCharacterModelLoaded extends TheWireCharacterModelState {
  final TheWireCharacterModel theWireCharacterModel;
  const TheWireCharacterModelLoaded({required this.theWireCharacterModel});
}

class TheWireCharacterModelError extends TheWireCharacterModelState {}
