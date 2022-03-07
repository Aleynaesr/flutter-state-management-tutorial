import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shopping_cart/utils/constant.dart';
import 'package:getx_shopping_cart/utils/controller.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Controller _controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
        backgroundColor: primary,
        actions: [
          TextButton(
              onPressed: () {
                _controller.addProduct();
                Get.snackbar("Successfully", "Added Product to Favorites",
                    backgroundColor: primary, colorText: backgroundColor);
              },
              child: const Icon(
                Icons.add_box,
                color: Colors.white,
              )),
        ],
      ),
      body: Center(
          child: Obx(() => Text(
            "Total Favorites: ${_controller.product.length}",
            style: const TextStyle(fontSize: 20),
          ))),
    );
  }
}