import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopappui/constants.dart';
import 'package:shopappui/models/product.dart';
import 'package:shopappui/screens/details/Components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
            icon: SvgPicture.asset(
              "icons/cart.svg.svg",
              color: Colors.white,
            ),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset(
              "icons/search.svg.svg",
              color: Colors.white,
            ),
            onPressed: () {}),
        SizedBox(
          width: KDefaultpaddin / 2,
        )
      ],
    );
  }
}
