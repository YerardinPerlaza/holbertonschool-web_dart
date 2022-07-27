import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
  try {
    var userData = await fetchUserData();
    var data = json.decode(userData);
    var orderUseer = await fetchUserOrders(data["id"]);
    var listorderUseer = json.decode(orderUseer);
    var getIteam = "";
    double sum = 0.0;
    for (var l in listorderUseer) {
      getIteam = await fetchProductPrice(l);
      sum += json.decode(getIteam);
    }
    ;

    return sum;
  } catch (e) {
    return -1;
  }
}
