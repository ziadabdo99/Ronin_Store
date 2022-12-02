import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/providers/Products.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop App',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          fontFamily: "Ubuntu",
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shop App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Text('Let\'s build a p!'),
      ),
    );
  }
}
