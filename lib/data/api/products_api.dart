import 'package:ativ05_04_21/data/abstraction/products_abstract_api.dart';
import 'package:ativ05_04_21/models/Product.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductsApi extends ProductsAbstractApi {
  fetch() async {
    http.Response response = await http.get(
        'https://myproducts-backend.herokuapp.com/api/core/products',
        headers: {'Content-Type': 'application/json'});

    String utf8body = utf8.decode(response.bodyBytes);
    dynamic jsonBody = json.decode(utf8body);

    return List.castFrom(jsonBody['data']);
  }

  add(Product product) {}
  update(Product product) {}
  delete(int id) {}
}
