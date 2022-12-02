// ignore_for_file: prefer_final_fields

import 'package:flutter/widgets.dart';
import 'package:shop_app/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Microwave rice cooker',
      description: 'Microwave rice cooker',
      price: 550.99,
      imageUrl:
          'https://m.media-amazon.com/images/I/51Bnk3e7ppL._AC_SX679_.jpg',
      isFavorite: false,
    ),
    Product(
      id: 'p2',
      title: 'Tupperware COLD BREW COFFEE CARAF',
      description: 'Very Effective',
      price: 899.99,
      imageUrl:
          'https://m.media-amazon.com/images/I/71vjo-KQatL._AC_SY879_.jpg',
      isFavorite: false,
    ),
    Product(
      id: 'p3',
      title: 'Tupperware Serving Cups Set 250ML - 3 Pieces',
      description: 'Tupperware Serving Cups Set 250ML - 3 Pieces',
      price: 199.99,
      imageUrl:
          'https://m.media-amazon.com/images/I/515egzNrL+L._AC_SX679_.jpg',
      isFavorite: false,
    ),
    Product(
      id: 'p4',
      title: 'New Tupperware Tupperware Crystalwave',
      description:
          'New Tupperware Tupperware Crystalwave microwave reheatable divided lunchbox 1L dish Travel and ToGo Food Orange',
      price: 49.99,
      imageUrl: 'https://m.media-amazon.com/images/I/31qsiCfXLlL._AC_.jpg',
      isFavorite: false,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    notifyListeners();
  }
}
