import 'package:dio/dio.dart';
import 'package:rick_bloc_app/data/models/character_model.dart';

class CharacterApiProvider {
  final url = 'https://rickandmortyapi.com/api/character';

  Future<CharacterModel> getCharacter(int page, String name) async {
    final dio = Dio();
    final response = await dio.get(url + '?page=$page&name=$name');
    if (response.statusCode == 200) {
      // List<CharacterModel> list = (response.data as List<dynamic>)
      //     .map((e) => CharacterModel.fromJson((e as Map<String, dynamic>)))
      //     .toList();
      return CharacterModel.fromJson(response.data as Map<String, dynamic>);
    } else {
      throw Exception('Error fetching users');
    }
  }
}
