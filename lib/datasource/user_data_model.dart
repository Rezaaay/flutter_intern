import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final String id; // 🔥 Tambahkan ID agar bisa merujuk ke dokumen dalam subcollection
  final String nama;
  final String email;
  final String noHp;
  final String alamat;
  final String role;

  const UserData({
    this.id = '', // ID opsional, bisa kosong jika belum dibuat
    required this.nama,
    required this.email,
    required this.noHp,
    required this.alamat,
    required this.role,
  });

  // Convert Firestore Document to UserData (From Subcollection)
  factory UserData.fromMap(Map<String, dynamic> map, {String id = ''}) {
    return UserData(
      id: id, // 🔥 Gunakan ID dari Firestore
      nama: map['nama'] ?? '',
      email: map['email'] ?? '',
      noHp: map['noHp'] ?? '',
      alamat: map['alamat'] ?? '',
      role: map['role'] ?? '',
    );
  }

  // Convert UserData to Firestore Map
  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'email': email,
      'noHp': noHp,
      'alamat': alamat,
      'role': role,
    };
  }

  @override
  List<Object> get props => [id, nama, email, noHp, alamat, role];
}
