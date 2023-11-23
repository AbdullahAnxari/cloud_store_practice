import 'package:read_write/lib.dart';

class FireRepoSingleRead {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference _reference =
      _firestore.collection(FirebaseConstant.data);

  static late DocumentSnapshot docSnap;
  static Map<String, dynamic>? snapshot;

  static Future<void> getDocSnap() async {
    docSnap = await _reference.doc('zAVgxfOJCQUNsFY9T7QP').get();
    snapshot = docSnap.data() as Map<String, dynamic>?;
  }

  //*
  static Future<String?> fetchSingleString() async {
    try {
      if (snapshot != null && snapshot!.containsKey('stringField')) {
        return snapshot!['stringField'];
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('Error: $e');
      return null;
    }
  }

  //*
  static Future<int?> fetchSingleInt() async {
    try {
      if (snapshot != null && snapshot!.containsKey('numberField')) {
        return snapshot!['numberField'];
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('Erro: $e');
      return null;
    }
  }

  //*
  static Future<bool?> fetchSingleBool() async {
    try {
      if (snapshot != null && snapshot!.containsKey('booleanField')) {
        return snapshot!['booleanField'];
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('Erro: $e');
      return null;
    }
  }

  //*
  static Future<Timestamp?> fetchSingleTime() async {
    try {
      if (snapshot != null && snapshot!.containsKey('timestampField')) {
        return snapshot!['timestampField'];
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('Erro: $e');
      return null;
    }
  }

  //*
  static Future<SingleNestedObject?> fetchSingleNested() async {
    try {
      if (snapshot != null && snapshot!.containsKey('nestedObject')) {
        debugPrint('Has data : $snapshot');
        return SingleNestedObject.fromMap(snapshot!['nestedObject']);
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('Erro: $e');
      return null;
    }
  }

  //*
  static Future<GeoPoint?> fetchSingleGeopoint() async {
    try {
      if (snapshot != null && snapshot!.containsKey('geopointField')) {
        debugPrint('Has data d: $snapshot');
        GeoPoint geoPoint = snapshot!['geopointField'];
        return geoPoint;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('Erro: $e');
      return null;
    }
  }

  //*
  static Future<List<String>?> fetchSingleArray() async {
    try {
      if (snapshot != null && snapshot!.containsKey('arrayField')) {
        List<String>? newList=[];
        for (var element in snapshot!['arrayField']) {
          newList.add(element);
        }
        return newList;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('Erro: $e');
      return null;
    }
  }
}
