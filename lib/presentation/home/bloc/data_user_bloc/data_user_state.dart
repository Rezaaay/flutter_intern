part of 'data_user_bloc.dart';

@freezed
class DataUserState with _$DataUserState {
  const factory DataUserState.initial() = _Initial;
  const factory DataUserState.loading() = _Loading;
  const factory DataUserState.loaded(List<UserData> dataUserList) = _Loaded;
  const factory DataUserState.success(String message) = _Success;
  const factory DataUserState.error(String message) = _Error;
}
