import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.routeName, arguments: id);
        },
        child: GridTile(
            child: Image.network(
              imageUrl,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black45,
              title: Text(
                title,
                textAlign: TextAlign.center,
              ),
              leading: IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            )),
      ),
    );
  }
}
