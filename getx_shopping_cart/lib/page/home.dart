import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_shopping_cart/utils/constant.dart';
import 'package:getx_shopping_cart/utils/controller.dart';
import 'package:getx_shopping_cart/widget/buildAppBar.dart';
import 'package:getx_shopping_cart/widget/buildFavoriteButton.dart';
import 'package:getx_shopping_cart/widget/buildProductContainer.dart';

class HomePage extends StatelessWidget {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar(),
        body: Obx(() => GridView.builder(
              padding: const EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15),
              itemCount: controller.product.length,
              itemBuilder: (context, index) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    productContainer(index),
                    Obx(() => favoriteButton(index: index))
                  ],
                );
              },
            )));
  }
}
