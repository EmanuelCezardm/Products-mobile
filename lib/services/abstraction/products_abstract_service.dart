import 'package:ativ05_04_21/core/domain/models/Product.dart';

abstract class ProductsAbstraticService {
  Future<List<Product>> fetch();
  Future<bool> add();
  Future<bool> update();
  Future<bool> delete();
}
