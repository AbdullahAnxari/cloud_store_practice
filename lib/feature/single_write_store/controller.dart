import 'package:read_write/lib.dart';
import 'package:read_write/remote_repo/single_write_repo.dart';

class SingleWriteController extends GetxController {
  static final instance = Get.find<SingleWriteController>();

  final TextEditingController singleStringController = TextEditingController();
  final TextEditingController singleIntController = TextEditingController();
  final TextEditingController singleBoolController = TextEditingController();
  final TextEditingController singelArrayIntController =
      TextEditingController();
  final TextEditingController singleArrayStringController =
      TextEditingController();
  final TextEditingController singleNestedIntController =
      TextEditingController();
  final TextEditingController singleNestedStringController =
      TextEditingController();
  final TextEditingController singleTimestampController =
      TextEditingController();
  final TextEditingController singleLatitudeController =
      TextEditingController();
  final TextEditingController singleLongitudeController =
      TextEditingController();

  //*String
  void setSingleString({required String stringField}) async {
    try {
      final result =
          await SingleWriteFireRepo().createSingleString(stringField);
      if (result) {
        Fluttertoast.showToast(msg: 'String is successfully Written');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Fail to Write String");
    }
  }

  //*Int
  void setSingleInt({required int numberField}) async {
    try {
      final result = await SingleWriteFireRepo().createSingleInt(numberField);
      if (result) {
        Fluttertoast.showToast(msg: 'Int is successfully Written');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Fail to Write String");
    }
  }

  //*Bool
  void setSingleBool({required bool boolvalue}) async {
    try {
      final result = await SingleWriteFireRepo().createSingleBool(boolvalue);
      if (result) {
        Fluttertoast.showToast(msg: 'Bool is successfully Written');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Fail to Write String");
    }
  }

  //*Array field
  void setSingleArrayField({required List<String> arrayField}) async {
    try {
      final result = await SingleWriteFireRepo().createSingleArray(arrayField);
      if (result) {
        Fluttertoast.showToast(msg: 'Array is successfully written');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Fail to Write String");
    }
  }

  //*Array field
  void setSingleNestedField({
    required String stringField,
required int intField}) async {
    try {
      final result =
          await SingleWriteFireRepo().createSingleNested(stringField, intField);
      if (result) {
        Fluttertoast.showToast(msg: 'Nested is successfully written');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Fail to Write String");
    }
  }

  //*GeoField
  void setSingleGeoField({
    required double latitude,
required double longitude}) async {
    try {
      final result =
          await SingleWriteFireRepo().createSingleGeoField(latitude, longitude);
      if (result) {
        Fluttertoast.showToast(msg: 'GeoField is successfully written');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Fail to Write String");
    }
  }

  //*Switch Button login
  bool boolValue = false;
  void changeBoolValue({required bool value}) {
    boolValue = value;
    singleBoolController.text = boolValue.toString();
    update();
  }
}
