import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_intern/datasource/user_data_model.dart';

class FirestoreRemoteDataSource {
  final FirebaseFirestore _firestore;

  FirestoreRemoteDataSource(this._firestore);

  Future<void> addUserData(UserData user) async {
    final userRef = _firestore.collection('user_data').doc(user.email);
    await userRef.collection('entries').add({
      'nama': user.nama,
      'email': user.email,
      'noHp': user.noHp,
      'alamat': user.alamat,
      'role': user.role,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<void> updateUserData(
      {required String email,
      required String documentId,
      required Map<String, dynamic> updatedData}) async {
    await _firestore
        .collection('user_data')
        .doc(email)
        .collection('entries')
        .doc(documentId)
        .update(updatedData);
  }

  Future<void> deleteUserData({required String email, required String documentId}) async {
    await _firestore
        .collection('user_data')
        .doc(email)
        .collection('entries')
        .doc(documentId)
        .delete();
  }

  Stream<List<UserData>> readUserData({required String email}) {
    return _firestore
        .collection('user_data')
        .doc(email)
        .collection('entries')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return UserData.fromMap(data, id: doc.id);
      }).toList();
    });
  }
}
