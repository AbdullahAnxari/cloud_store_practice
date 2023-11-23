import '../../lib.dart';

class SingleReadController extends GetxController {
  static final instance = Get.find<SingleReadController>();

  //*
  String? singleString;
  void getSingleString() async {
    final result = await FireRepoSingleRead.fetchSingleString();
    if (result != null) {
      singleString = result;
      showToast(msg: 'String Fetched');
    } else {
      showToast(msg: "Fetched Failed");
    }
    update();
  }

  //*
  int? singleInt;
  void getSingleInt() async {
    final result = await FireRepoSingleRead.fetchSingleInt();
    if (result != null) {
      singleInt = result;
      showToast(msg: 'String Fetched');
    } else {
      showToast(msg: "Fetched Failed");
    }
    update();
  }

  //*
  bool? singleBool;
  void getSingleBool() async {
    final result = await FireRepoSingleRead.fetchSingleBool();
    if (result != null) {
      singleBool = result;
      showToast(msg: 'String Fetched');
    } else {
      showToast(msg: "Fetched Failed");
    }
    update();
  }

  //*
  Timestamp? singleTime;
  void getSingleTime() async {
    final result = await FireRepoSingleRead.fetchSingleTime();
    if (result != null) {
      singleTime = result;
      showToast(msg: 'String Fetched');
    } else {
      showToast(msg: "Fetched Failed");
    }
    update();
  }

  //*
  SingleNestedObject? singleNested;
  void getSingleNested() async {
    final result = await FireRepoSingleRead.fetchSingleNested();
    if (result != null) {
      singleNested = result;
      showToast(msg: 'String Fetched');
    } else {
      showToast(msg: "Fetched Failed");
    }
    update();
  }

  //*
  GeoPoint? singleGeopoint;
  void getSingleGeopoint() async {
    final result = await FireRepoSingleRead.fetchSingleGeopoint();
    if (result != null) {
      singleGeopoint = result;
      showToast(msg: 'String Fetched');
    } else {
      showToast(msg: "Fetched Failed");
    }
    update();
  }

  //*
  List<String>? singleArray;
  void getSingleArray() async {
    final result = await FireRepoSingleRead.fetchSingleArray();
    if (result != null) {
      singleArray = result;
      showToast(msg: 'String Fetched');
    } else {
      showToast(msg: "Fetched Failed");
    }
    update();
  }
}
