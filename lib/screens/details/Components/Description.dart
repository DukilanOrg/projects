import 'package:flutter/material.dart';
import 'package:shopappui/constants.dart';
import 'package:shopappui/models/product.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDefaultpaddin),
      child: Text("كل الشنط ديه مسروقه و اللي هيشتريهم هيتم القبض عليه"
      ,style: TextStyle(height: 1.5),),
    );
  }
}