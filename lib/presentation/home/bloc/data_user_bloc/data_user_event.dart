part of 'data_user_bloc.dart';

@freezed
class DataUserEvent with _$DataUserEvent {
  const factory DataUserEvent.fetchDataUser(String email) = _FetchDataUser;
  const factory DataUserEvent.userDataUpdated(UserData? dataUser) = _UserDataUpdated;
  const factory DataUserEvent.addDataUser(UserData user) = _AddDataUser;
  const factory DataUserEvent.deleteDataUser(String email, String documentId) = _DeleteDataUser;
  const factory DataUserEvent.updateDataUser(String email, String documentId, Map<String, dynamic> updatedData) = _UpdateDataUser;
  const factory DataUserEvent.dispose() = _Dispose;
}