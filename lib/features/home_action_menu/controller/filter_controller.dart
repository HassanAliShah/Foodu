import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FilterController extends GetxController {
  var sortByOptions = ['Recommended', 'Popularity', 'Rating', 'Distance'].obs;
  var selectedSortByIndex = 0.obs;  // Use an integer to track the selected radio button index

  var restaurantOptions = ['Promo', 'Priority Restaurant', 'Small MSME Restaurant'].obs;
  var restaurantSelectedByIndex = 0.obs;

  var deliveryFeeOptions = ['Any', 'Less than \$2.00', 'Less than \$4.00', 'Less than \$8.00'].obs;
  var selectedDeliveryFeeIndex = 0.obs;  // Use an integer to track the selected radio button index

  var modeOptions = ['Delivery', 'Self Pick-up'].obs;
  var selectedModeIndex = 0.obs;  // Use an integer to track the selected radio button index

  var cuisinesOptions = ['Dessert', 'Beverages', 'Snack', 'Chicken', 'Japanese', 'Noodles', 'Pizza & Pasta'].obs;
  var cuisinesSelected = [false, true, false, false, true, true, false].obs;

  void toggleOption(int section, int index) {
    switch (section) {
      case 0: // Sort by section
        selectedSortByIndex.value = index;
        break;
      case 1: // Restaurant section
        restaurantSelectedByIndex.value = index;
        break;
      case 2: // Delivery fee section
        selectedDeliveryFeeIndex.value = index;
        break;
      case 3: // Mode section
        selectedModeIndex.value = index;
        break;
      case 4: // Cuisines section
        cuisinesSelected[index] = !cuisinesSelected[index];
        break;
    }
  }
}
