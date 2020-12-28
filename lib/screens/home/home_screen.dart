import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopappui/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBodyScreen(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("icons/back.svg",color: KTextColor),onPressed: (){},),
     actions: [IconButton(icon: SvgPicture.asset("icons/search.svg",color: KTextColor,), onPressed: (){}),
       IconButton(icon: SvgPicture.asset("icons/cart.svg",color: KTextColor,), onPressed: (){}),
       SizedBox(width: KDefaultpaddin /2,)
     ],
    );
  }
}
