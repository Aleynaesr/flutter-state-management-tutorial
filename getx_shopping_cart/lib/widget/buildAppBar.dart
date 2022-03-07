import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shopping_cart/page/favorites.dart';
import 'package:getx_shopping_cart/utils/constant.dart';
import 'package:getx_shopping_cart/utils/controller.dart';

AppBar appBar() {
  Controller controller = Get.find();

  return AppBar(
    title: const Text("GetX Shopping"),
    backgroundColor: primary,
    actions: [
      TextButton(
          onPressed: () {
            Get.to(FavoritePage());
          },
          child: const Icon(
            Icons.favorite_sharp,
            color: backgroundColor,
          )),
    ],
  );
}