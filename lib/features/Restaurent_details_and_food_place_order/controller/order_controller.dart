import 'package:foodu/features/Restaurent_details_and_food_place_order/model/order_item_model.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  
  var orderItems = <OrderItem>[].obs;

  void addItem(OrderItem item) {
    orderItems.add(item);
  }

  void editItem(int index, OrderItem updatedItem) {
    orderItems[index] = updatedItem;
  }

  void removeItem(int index) {
    orderItems.removeAt(index);
  }
}