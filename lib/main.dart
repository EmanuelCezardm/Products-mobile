import 'package:ativ05_04_21/pages/HomePage.dart';
import 'package:ativ05_04_21/pages/ProductsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        'home': (context) => HomePage(),
        'products': (context) => ProductsPage(),
      },
      home: HomePage(),
    );
  }
}
