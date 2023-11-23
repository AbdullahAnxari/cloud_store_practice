import '../../../lib.dart';

class ReadController extends GetxController {
  static final instance = Get.find<ReadController>();

  ReadDataModel read = ReadDataModel();

  //*Fetch
  void fetchData() async {
    final result = await FirebaseRepo().fetch();
    debugPrint('result:   $result');
    if (result != null) {
      
      read = result;
    } else {
      Fluttertoast.showToast(msg: "Fail to fetch data");
    }
    update();
  }
}
