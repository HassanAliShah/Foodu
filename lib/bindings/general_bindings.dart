import 'package:get/get.dart';

import '../data/services/network_service/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    /// -- Core
    Get.put(NetworkManager());
  }
}
