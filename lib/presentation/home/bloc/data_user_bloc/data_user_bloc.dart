import 'package:bloc/bloc.dart';
import 'package:flutter_intern/datasource/firestore_remote_datasource.dart';
import 'package:flutter_intern/datasource/user_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_user_event.dart';
part 'data_user_state.dart';
part 'data_user_bloc.freezed.dart';

class DataUserBloc extends Bloc<DataUserEvent, DataUserState> {
  final FirestoreRemoteDataSource _firestoreRemoteDataSource;
  Stream<List<UserData>>? _userStream;

  DataUserBloc(this._firestoreRemoteDataSource) : super(const DataUserState.initial()) {
    on<_FetchDataUser>(_onFetchDataUser);
    on<_UserDataUpdated>(_onUserDataUpdated);
    on<_AddDataUser>(_onAddDataUser);
    on<_DeleteDataUser>(_onDeleteDataUser);
    on<_UpdateDataUser>(_onUpdateDataUser);
    on<_Dispose>(_onDispose);
  }

  // Fetch Data and Listen to Firestore Stream
  Future<void> _onFetchDataUser(_FetchDataUser event, Emitter<DataUserState> emit) async {
    emit(const DataUserState.loading());
    try {
      _userStream = _firestoreRemoteDataSource.readUserData(email: event.email);

      await emit.forEach<List<UserData>>(
        _userStream!,
        onData: (userDataList) {
          if (userDataList.isEmpty) {
            return const DataUserState.error('User tidak ditemukan');
          }
          return DataUserState.loaded(userDataList);
        },
        onError: (error, stackTrace) => DataUserState.error('Terjadi kesalahan: $error'),
      );
    } catch (e) {
      emit(DataUserState.error('Gagal mengambil data: $e'));
    }
  }

  // Handle Real-time User Data Updates
  void _onUserDataUpdated(_UserDataUpdated event, Emitter<DataUserState> emit) {
    if (event.dataUser == null) {
      emit(const DataUserState.error('User tidak ditemukan'));
    } else {
      emit(DataUserState.loaded(event.dataUser! as List<UserData>));
    }
  }

  Future<void> _onUpdateDataUser(_UpdateDataUser event, Emitter<DataUserState> emit) async {
    emit(const DataUserState.loading());
    try {
      await _firestoreRemoteDataSource.updateUserData(
        email: event.email,
        documentId: event.documentId,
        updatedData: event.updatedData,
      );

      emit(const DataUserState.success('User berhasil diperbarui!'));
    } catch (e) {
      emit(DataUserState.error('Gagal memperbarui user: $e'));
    }
  }

  // Add User Data Based on Email
  Future<void> _onAddDataUser(_AddDataUser event, Emitter<DataUserState> emit) async {
    emit(const DataUserState.loading());

    try {
      print("🔥 Menambahkan user dengan data:");
      print("Nama: ${event.user.nama}");
      print("Email: ${event.user.email}");
      print("No HP: ${event.user.noHp}");
      print("Alamat: ${event.user.alamat}");
      print("Role: ${event.user.role}");

      await _firestoreRemoteDataSource.addUserData(event.user);

      print("✅ Data berhasil ditambahkan!");
      emit(const DataUserState.success('User berhasil ditambahkan!'));
    } catch (e) {
      print("❌ Gagal menambahkan user: $e");
      emit(DataUserState.error('Gagal menambahkan user: $e'));
    }
  }

  // Delete User Data by Email
  Future<void> _onDeleteDataUser(_DeleteDataUser event, Emitter<DataUserState> emit) async {
    emit(const DataUserState.loading());
    try {
      await _firestoreRemoteDataSource.deleteUserData(
        email: event.email,
        documentId: event.documentId,
      );

      emit(const DataUserState.success('Alamat berhasil dihapus!'));
    } catch (e) {
      emit(DataUserState.error('Gagal menghapus alamat: $e'));
    }
  }

  void _onDispose(_Dispose event, Emitter<DataUserState> emit) {
    _userStream = null;
    emit(const DataUserState.initial());
  }
}
