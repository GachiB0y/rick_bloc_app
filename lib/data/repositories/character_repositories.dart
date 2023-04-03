import 'package:rick_bloc_app/data/api/charcater_api.dart';
import 'package:rick_bloc_app/data/models/character_model.dart';

class CharecterRepository {
  final CharacterApiProvider _characterProvider = CharacterApiProvider();
  Future<CharacterModel> getCharacter(int page, String name) =>
      _characterProvider.getCharacter(page, name);
}
