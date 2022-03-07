import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shopping_cart/utils/controller.dart';

Container productContainer(int index) {
  Controller controller = Get.find();
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10)],
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(controller.product.value[index].imagePath, fit: BoxFit.scaleDown,)),
        const SizedBox(height: 12),
        Text(controller.product.value[index].name,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        Text(controller.product.value[index].price,
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.grey)),
      ],
    ),
  );
}
