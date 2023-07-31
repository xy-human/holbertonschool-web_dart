import 'dart:convert';
import 'package:http/http.dart' as Http;

Future<void> printRmCharacters() async {
  var url = 'https://rickandmortyapi.com/api/character';

  try {
    var response = await Http.get(Uri.parse(url));
    List characters = json.decode(response.body)['results'];
    characters.forEach((character) => print(character["name"]));
  } catch (e) {
    print('error caught: $e');
  }
}
