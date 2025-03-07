part of 'regist_bloc.dart';

@freezed
class RegistState with _$RegistState {
  const factory RegistState.initial() = _Initial;
  const factory RegistState.loading() = _Loading;
  const factory RegistState.success() = _Success;
  const factory RegistState.error(String message) = _Error;
}
