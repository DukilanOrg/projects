import 'package:flutter/material.dart';
import 'package:shopappui/constants.dart';
import 'package:shopappui/models/product.dart';
class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(KDefaultpaddin),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: KDefaultpaddin / 4),
            child: Text(
              product.title,
              style: TextStyle(color: KTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
