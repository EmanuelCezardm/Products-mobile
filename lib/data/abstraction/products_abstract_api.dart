import 'package:ativ05_04_21/models/Product.dart';

abstract class ProductsAbstractApi {
  Future<List<Map>> fetch();
  Future<bool> add(Product product);
  Future<bool> update(Product product);
  Future<bool> delete(int id);
}
