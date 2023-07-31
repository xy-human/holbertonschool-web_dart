import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String response = await fetchUserData();
  return json.decode(response)['id'];
}
