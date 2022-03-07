import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_shopping_cart/model/product.dart';

class Controller extends GetxController {
  RxList<Product> product = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    for (var i = 0; i < 4; i++) {
      product.add(Product(
          imagePath: "https://img.joomcdn.net/a24f70d27ca2552e92aa45c9005827c82b915156_original.jpeg",
          name: "Product $i",
          price: "${12.99 + i} £",
          favorite: false.obs));
    }
  }

  changeFavorite({required int index}) {
    product.value[index].favorite.value = !product.value[index].favorite.value;
    update();
  }

  addProduct() {
    product.add(Product(
        imagePath: "https://img.joomcdn.net/a24f70d27ca2552e92aa45c9005827c82b915156_original.jpeg",
        name: "New Product",
        price: "${29.99} £",
        favorite: false.obs));
  }
}
