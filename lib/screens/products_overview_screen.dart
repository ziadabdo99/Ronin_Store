import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';
import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ronin Store",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ProductsGrid(),
    );
  }
}
