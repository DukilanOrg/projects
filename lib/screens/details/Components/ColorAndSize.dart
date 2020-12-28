import 'package:flutter/material.dart';
import 'package:shopappui/constants.dart';
import 'package:shopappui/models/product.dart';
import 'package:shopappui/screens/details/Components/body.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                      color: Color(0xFFF8C078),
                      isSelected: true),
                  ColorDot(
                      color: Color(0xFFA29B9B),
                      isSelected: true),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                style: TextStyle(color: KTextColor),
                children: [
                  TextSpan(
                    text: "Size\n",
                  ),
                  TextSpan(
                    text: "${product.size}",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}