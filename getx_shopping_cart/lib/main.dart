import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shopping_cart/page/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Getx Shopping Cart',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
