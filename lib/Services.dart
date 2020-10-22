//
 
import 'package:http/http.dart' as http;
import 'Product.dart';
 
class Services {
  //
  static const String url = 'https://organic.towniebread.com/products.json';
 
  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final List<User> users = usersFromJson(response.body);
        return users;
      } else {
        return List<User>();
      }
    } catch (e) {
      return List<User>();
    }
  }
}