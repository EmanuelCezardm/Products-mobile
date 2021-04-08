import 'package:ativ05_04_21/data/mock/ProductsMock.dart';
import 'package:ativ05_04_21/models/Product.dart';

class ProductsService {
  fetch() {
    List data = new ProductsMock().fetch();

    List<Product> products = responseToObjectList(data);

    return products;
  }

  responseToObjectList(List<Map> response) {
    List<Product> productList = [];

    for (int i = 0; i < response.length; i++) {
      productList.add(Product.fromMap(response[i]));
    }

    return productList;
  }
}
