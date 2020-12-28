import 'package:flutter/material.dart';
import 'package:shopappui/constants.dart';
import 'package:shopappui/models/product.dart';
import 'package:shopappui/screens/details/detailsScreen.dart';
import 'package:shopappui/screens/home/components/ItemCard.dart';
import 'package:shopappui/screens/home/components/categorries.dart';

class HomeBodyScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: KDefaultpaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDefaultpaddin),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: KDefaultpaddin,
              crossAxisSpacing: KDefaultpaddin,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            product: products[index],
                          ))),
            ),
          ),
        )),
      ],
    );
  }
}
