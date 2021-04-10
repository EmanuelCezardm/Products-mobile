import 'package:ativ05_04_21/data/abstraction/products_abstract_api.dart';
import 'package:ativ05_04_21/data/api/products_api.dart';

class Facade {
  ProductsAbstractApi _productsApi;

  Facade() {
    this._productsApi = new ProductsApi();
  }

  Future<List<Map<String, dynamic>>> fetchproducts() async {
    return await ProductsApi().fetch();
  }
}
