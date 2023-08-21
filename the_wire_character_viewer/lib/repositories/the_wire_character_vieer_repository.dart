import 'package:the_wire_character_viewer/models/the_wire_character_api_model.dart';
import 'package:the_wire_character_viewer/services/the_wire_character_viewer_api.dart';


class TheWireCharacterViewerReposity {
  final _provider = TheWireCharacterViewApi();

  Future<TheWireCharacterModel> fetchTheWireCharacter() {
    return _provider.fetchDetailListOfCharacter();
  }
}
