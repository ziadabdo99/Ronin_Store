import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/Products.dart';
import 'package:shop_app/widgets/product_item.dart';

import "../models/product.dart";
import './product_item.dart';
import '../providers/Products.dart';

class ProductsGrid extends StatelessWidget {
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imageUrl,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
