// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/Products.dart';
import '../providers/Products.dart';

class ProductDetailScreen extends StatelessWidget {
//   final String title;
// const Static ;
//   const ProductDetailScreen(this.title);

  static const routeName = "product_detail";
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context)
        .items
        .firstWhere((prod) => prod.id == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
