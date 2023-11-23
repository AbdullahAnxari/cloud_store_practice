import 'package:read_write/lib.dart';

class SingleWriteFireRepo {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference _reference =
      _firestore.collection(FirebaseConstant.singleWrite);

  //*String
  Future<bool> createSingleString(String stringName) async {
    try {
      await _reference.add({'stringField': stringName});
      return true;
    } catch (e) {
      debugPrint('Single Write Error: $e');
      return false;
    }
  }

  //*Int
  Future<bool> createSingleInt(int intField) async {
    try {
      await _reference.add({'numberField': intField});
      return true;
    } catch (e) {
      debugPrint('Single Write Error $e');
      return false;
    }
  }

  //*Bool
  Future<bool> createSingleBool(bool boolvalue) async {
    try {
      await _reference.add({'booleanValue': boolvalue});
      return true;
    } catch (e) {
      debugPrint('Single Write Error $e');
      return false;
    }
  }

  //*Array
  Future<bool> createSingleArray(List<String> arrayField) async {
    try {
      await _reference.add({'arrayField': arrayField});
      return true;
    } catch (e) {
      debugPrint('Single Write Error $e');
      return false;
    }
  }

  //*Array
  Future<bool> createSingleNested(String nestedString, int nestedInt) async {
    try {
      await _reference
          .add({'stringField': nestedString, 'numberField': nestedInt});
      return true;
    } catch (e) {
      debugPrint('Single Write Error $e');
      return false;
    }
  }

  //*GeoField
  Future<bool> createSingleGeoField(double latitude, double longitude) async {
    try {
      await _reference
          .add({'latitude': latitude, 'longitude': longitude});
      return true;
    } catch (e) {
      debugPrint('Single Write Error $e');
      return false;
    }
  }
}
