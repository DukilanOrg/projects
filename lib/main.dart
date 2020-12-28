import 'package:flutter/material.dart';
import 'package:shopappui/constants.dart';
import 'package:shopappui/screens/home/home_screen.dart';

main(){
  runApp(ShopApp());
}
class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shop App",
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: KTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen (),
    );
  }
}
