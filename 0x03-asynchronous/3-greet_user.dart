import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  String username = json.decode(await fetchUserData())['username'];
  return 'Hello $username';
}

Future<String> loginUser() async {
  bool credentials = await checkCredentials();
  if (credentials) {
    print('There is a user: true');
    return await greetUser();
  }
  print('There is a user: false');
  return 'Wrong credentials';
}
