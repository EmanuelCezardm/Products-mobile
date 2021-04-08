import 'package:ativ05_04_21/models/Product.dart';
import 'package:ativ05_04_21/services/ProductsService.dart';
import 'package:ativ05_04_21/widgets/BaseAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  final List<Product> products = new ProductsService().fetch();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Container(
        child: Column(
          children: [
            BaseAppBar(
              title: "Lista de Produtos",
              color: Colors.white,
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.greenAccent,
                      child: Text(
                        products[index].name +
                            " " +
                            products[index].price.toString() +
                            " " +
                            "Reais",
                        style: TextStyle(fontSize: 32),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
