import '../lib.dart';

class FirebaseRepo {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//* Read
  Future<ReadDataModel?> fetch() async {
    try {
      CollectionReference reference =
          _firestore.collection(FirebaseConstant.data);

      DocumentSnapshot docSnap =
          await reference.doc("zAVgxfOJCQUNsFY9T7QP").get();

      Map<String, dynamic>? snapshot = docSnap.data() as Map<String, dynamic>?;
      if (snapshot != null) {
        ReadDataModel read = ReadDataModel.fromMap(snapshot);
        debugPrint("$read");
        return read;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('ERROR Occur while fetching: $e');
      return null;
    }
  }

  //* Write
  Future<bool> createData(WritedataModel data) async {
    try {
      CollectionReference reference =
          _firestore.collection(FirebaseConstant.write);

      await reference.add(data.toMap());
      return true;
    } catch (e) {
      debugPrint('Error while writing:   $e');
      return false;
    }
  }
}
