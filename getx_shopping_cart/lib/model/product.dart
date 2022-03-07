import 'package:get/state_manager.dart';

class Product {
  String imagePath;
  String name;
  String price;
  RxBool favorite;
  Product({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.favorite,
  });
}