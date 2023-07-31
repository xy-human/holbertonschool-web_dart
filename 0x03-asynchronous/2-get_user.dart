import '2-util.dart';

Future<void> getUser() async {
  try {
    await fetchUser();
  } catch (e) {
    print('error caught: $e');
  }
}
