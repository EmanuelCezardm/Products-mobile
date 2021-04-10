import 'package:ativ05_04_21/data/facade.dart';
import 'package:ativ05_04_21/models/Product.dart';
import 'package:ativ05_04_21/services/abstraction/products_abstract_service.dart';

class ProductsService extends ProductsAbstraticService {
  fetch() async {
    List<Map> response = await new Facade().fetchproducts();

    List<Product> products = responseToObjectList(response);

    return products;
  }

  responseToObjectList(List<Map> response) {
    List<Product> productList = [];

    for (int i = 0; i < response.length; i++) {
      productList.add(Product.fromMap(response[i]));
    }

    return productList;
  }

  Future<bool> add() {}
  Future<bool> update() {}
  Future<bool> delete() {}
}
