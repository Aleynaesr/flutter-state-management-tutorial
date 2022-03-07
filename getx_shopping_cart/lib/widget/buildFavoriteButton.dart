import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shopping_cart/utils/constant.dart';
import 'package:getx_shopping_cart/utils/controller.dart';

Widget favoriteButton({required int index}) {
  Controller controller = Get.find();
  return Positioned(
    right: -5,
    top: -10,
    child: GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        controller.changeFavorite(index: index);
        Get.snackbar("Successfully", "Added Product to Favorites",
            backgroundColor: primary, colorText: backgroundColor);
      },
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
                color: controller.product.value[index].favorite.value
                    ? primary
                    : Colors.grey.shade300,
                width: 3)),
        child: Center(
          child: Icon(
              controller.product.value[index].favorite.value
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: controller.product.value[index].favorite.value
                  ? primary
                  : Colors.grey.shade300),
        ),
      ),
    ),
  );
}
