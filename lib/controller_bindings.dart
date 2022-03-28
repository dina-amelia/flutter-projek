import 'package:get/instance_manager.dart';

// import 'controllers/album_controller.dart';
// import 'controllers/user_controller.dart';
import 'controllers/barang_controller.dart';
import 'controllers/supplier_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put<AlbumController>(AlbumController());
    // Get.put<UserController>(UserController());
    Get.put<BarangController>(BarangController());
    Get.put<SupplierController>(SupplierController());
  }
}
