import 'package:get/get.dart';
import 'package:shop_kart/utils/network/network_manager.dart';

class GeneralBinding extends Bindings{

  @override void dependencies() {
    Get.put(NetworkManager());
  }
}