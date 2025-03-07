import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthlocalDatasource {
  AuthlocalDatasource._init();

  static final AuthlocalDatasource instance =
      AuthlocalDatasource._init();
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
}
