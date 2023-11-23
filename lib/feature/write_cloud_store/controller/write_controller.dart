import '../../../lib.dart';

class WriteController extends GetxController {
  static final instace = Get.find<WriteController>();

  
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController boolController = TextEditingController();
  final TextEditingController arrayIntController = TextEditingController();
  final TextEditingController arrayStringController = TextEditingController();
  final TextEditingController nestedIntController = TextEditingController();
  final TextEditingController nestedStringController = TextEditingController();
  final TextEditingController timestampController = TextEditingController();
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();

  WritedataModel write= WritedataModel();
  //*write
  void setData({required WritedataModel data}) async {
    final result = await FirebaseRepo().createData(data);
    if (result) {
      Fluttertoast.showToast(msg: "Successfully written data");
    } else {
      Fluttertoast.showToast(msg: "Failed to write data");
    }
  }

  //*Bool
  bool boolValue = false;
  void changeBoolValue({required bool value}){
    boolValue = value;
    boolController.text = boolValue.toString();
    update();
  }
}
