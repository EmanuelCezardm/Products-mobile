import 'package:ativ05_04_21/ui/widgets/BaseAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
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
          ],
        ),
      ),
    );
  }
}
