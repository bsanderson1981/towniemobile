//
 
//import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;
import 'package:towniemobile/Product.dart';
 

class Services {
  //
  static const String url = 'https://organic.towniebread.com/products.json';
 
  static Future<List<Product>> getUsers() async {
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final List<Product> product = productFromJson(response.body);
        return product;
      } else {
        return List<Product>();
      }
    } catch (e) {
      return List<Product>();
    }
  }
}