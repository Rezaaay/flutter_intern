import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_intern/datasource/user_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseFirestoreRemoteDatasource {
  FirebaseFirestoreRemoteDatasource._init();

  static final FirebaseFirestoreRemoteDatasource instance =
      FirebaseFirestoreRemoteDatasource._init();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveAuthToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        final token = await user.getIdToken(); // Hapus parameter true
        if (token != null && token.isNotEmpty) {
          await prefs.setString('auth_token', token);
          print('Token berhasil disimpan: $token');
        } else {
          print('Gagal mendapatkan token.');
        }
      } else {
        print('User tidak ditemukan.');
      }
    } catch (e) {
      print('Error menyimpan token: $e');
    }
  }

  // save email to shared preferences
  Future<void> saveEmail(String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
  }

  // get email from shared preferences
  Future<String?> getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('email');
    return email;
  }

  // remove email from shared preferences
  Future<void> removeEmail() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
  }

  // 🔥 Ambil Auth Token dari SharedPreferences
  Future<String?> getAuthToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('auth_token');
    print('Token diambil dari SharedPreferences: $token'); // Debugging
    return token;
  }

  Future<void> removeAuthToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token'); // Hapus token
  }

  // crete user data


  //stream read user data
  Stream<UserData> readUserData({required String email}) {
    return _firestore
        .collection('user_data')
        .doc(email)
        .snapshots()
        .map((event) {
      final data = event.data();
      return UserData(
        nama: data!['nama'],
        email: data['email'],
        noHp: data['noHp'],
        alamat: data['alamat'],
        role: data['role'],
      );
    });
  }

  //update user data
  Future<void> updateUserData({
    required String nama,
    required String email,
    required String noHp,
    required String alamat,
    required String role,
  }) async {
    await _firestore.collection('user_data').doc(email).update({
      'nama': nama,
      'email': email,
      'noHp': noHp,
      'alamat': alamat,
      'role': role,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  //delete user data
  Future<void> deleteUserData({required String email}) async {
    await _firestore.collection('user_data').doc(email).delete();
  }
}
