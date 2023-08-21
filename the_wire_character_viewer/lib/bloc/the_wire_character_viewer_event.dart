import 'package:equatable/equatable.dart';

abstract class TheWireCharacterModelEvent extends Equatable {
  const TheWireCharacterModelEvent();
  @override
  List<Object?> get props => [];
}

class TheWireCharacterModelFetch extends TheWireCharacterModelEvent {}
