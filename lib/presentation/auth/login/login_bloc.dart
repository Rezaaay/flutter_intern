import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_intern/datasource/firebase_firestore_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  FirebaseAuth auth = FirebaseAuth.instance;
  LoginBloc(this.auth) : super(const _Initial()) {
    on<_LoginWithEmailAndPassword>((event, emit) async {
      emit(const LoginState.loading());
      try {
        final userCredential = await auth.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );

        final idToken =
            await userCredential.user?.getIdToken(); // Ambil ID Token

        if (idToken != null && idToken.isNotEmpty) {
          await FirebaseFirestoreRemoteDatasource.instance.saveAuthToken();
          await FirebaseFirestoreRemoteDatasource.instance.saveEmail(event.email);
          print('ID Token berhasil disimpan: $idToken');
        } else {
          print('Gagal mendapatkan ID Token.');
        }

        emit(LoginState.success(userCredential));
      } catch (e) {
        emit(LoginState.error(e.toString()));
      }
    });
  }
}
