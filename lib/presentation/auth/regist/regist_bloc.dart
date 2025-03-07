import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_intern/datasource/firebase_firestore_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'regist_event.dart';
part 'regist_state.dart';
part 'regist_bloc.freezed.dart';

class RegistBloc extends Bloc<RegistEvent, RegistState> {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  RegistBloc(this.auth, this.firestore) : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(const RegistState.loading());
      try {
        // 🔥 Register user di Firebase Authentication
        final authResult = await auth.createUserWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );

        final user = authResult.user; // Ambil user dari authResult
        if (user == null) {
          throw Exception("Registrasi gagal, user tidak ditemukan.");
        }

        // 🔥 Simpan data user ke Firestore
        final userRef = firestore.collection('user_data').doc(event.email);
        await userRef.set({
          'created_at': FieldValue
              .serverTimestamp(), // 🔥 Pastikan Firestore mengatur timestamp
        }, SetOptions(merge: true));
        await userRef.collection('entries').add({
          'nama': event.name,
          'email': event.email,
          'noHp': event.noHp,
          'alamat': event.alamat,
          'role': event.role,
          'timestamp': FieldValue.serverTimestamp(),
        });
        // 🔥 Simpan Auth Token di SharedPreferences
        // await FirebaseFirestoreRemoteDatasource.instance.saveAuthToken(toke);

        emit(const _Success());
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
