import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/produits.dart';

// class ApiService {
//   static const String apiUrl =
//       'https://freeapi.miniprojectideas.com/api/amazon/GetAllProducts';

//   Future<List<Product>> fetchProducts() async {
//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       List<dynamic> data = jsonDecode(response.body);
//       return data.map((json) => Product.fromJson(json)).toList();
//     } else {
//       throw Exception('Erreur lors du chargement');
//     }
//   }
// }

class ApiService {
  static const String apiUrl =
      'https://freeapi.miniprojectideas.com/api/amazon/GetAllProducts';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
