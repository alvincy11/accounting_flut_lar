import 'package:get/get.dart';

import 'item_category_controller.dart';

class ItemCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemCategoryController>(() => ItemCategoryController());
  }
}
