import 'package:read_write/lib.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ReadController());
    Get.put(WriteController());
    Get.put(SingleWriteController());
    Get.put(SingleReadController());
  }
}
