import 'dart:convert';

import 'package:furniture_ui/models/category_model.dart';
import 'package:http/http.dart' as http;

Future<List<CategoryModel>> fetchCategory() async {
  final url =
      Uri.parse("https://5f210aa9daa42f001666535e.mockapi.io/api/categories");

  var response = await http.get(url);

  if (response.statusCode == 200) {
    List<CategoryModel> categories = (json.decode(response.body) as List)
        .map((data) => CategoryModel.fromJson(data))
        .toList();
    return categories;
  } else {
    throw Exception('Failed to load');
  }
}
