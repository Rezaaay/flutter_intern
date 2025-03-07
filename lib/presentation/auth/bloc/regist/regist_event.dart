part of 'regist_bloc.dart';

@freezed
class RegistEvent with _$RegistEvent {
  const factory RegistEvent.started() = _Started;
  const factory RegistEvent.register({
    required String name,
    required String email,
    required String password,
    required String noHp,
    required String alamat,
    required String role,
  }) = _Register;
}