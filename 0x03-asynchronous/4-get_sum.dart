import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  String userData = await fetchUserData();
  String userId = json.decode(userData)['id'];
  List productsNames = json.decode(await fetchUserOrders(userId));
  double totalPrice = 0;
  for (int position = 0; position < productsNames.length; position++)
    totalPrice += json.decode(await fetchProductPrice(productsNames[position]));
  return totalPrice;
}
