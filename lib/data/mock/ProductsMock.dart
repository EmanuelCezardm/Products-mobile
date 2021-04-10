import 'package:ativ05_04_21/data/abstraction/products_abstract_api.dart';
import 'package:ativ05_04_21/models/Product.dart';

class ProductsMock extends ProductsAbstractApi {
  static List<Map<String, dynamic>> list = [
    {
      "id": 1,
      "name": "Arroz",
      "price": "3.00",
      "image_path": null,
    },
    {
      "id": 2,
      "name": "Feijão",
      "price": "5.00",
      "image_path": null,
    },
    {
      "id": 3,
      "name": "Batata",
      "price": "4.00",
      "image_path": null,
    },
  ];

  fetch() async {
    return list;
  }

  add(Product product) async {
    Map data = product.toMap();

    data['id'] = list.length + 1;
    list.add(data);

    return true;
  }

  update(Product product) async {
    Map data = product.toMap();

    for (int i = 0; i < list.length; i++) {
      if (list[i]['id'] == data['id']) {
        list[i] = data;
      }
    }

    return true;
  }

  delete(int id) async {
    for (int i = 0; i < list.length; i++) {
      if (list[i]['id'] == id) {
        list.remove(i);
      }
    }

    return true;
  }
}
