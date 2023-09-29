import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/products_model.dart';

Future<List<ProductsModel>> fetchProducts() async {
  final url =
      Uri.parse("https://5f210aa9daa42f001666535e.mockapi.io/api/products");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    List<ProductsModel> products = (json.decode(response.body) as List)
        .map((data) => ProductsModel.fromJson(data))
        .toList();
    return products;
  } else {
    throw Exception('Failed to load');
  }
}
