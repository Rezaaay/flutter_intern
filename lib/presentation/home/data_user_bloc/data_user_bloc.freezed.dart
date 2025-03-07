// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchDataUser,
    required TResult Function(UserData? dataUser) userDataUpdated,
    required TResult Function(UserData user) addDataUser,
    required TResult Function(String email, String documentId) deleteDataUser,
    required TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)
        updateDataUser,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchDataUser,
    TResult? Function(UserData? dataUser)? userDataUpdated,
    TResult? Function(UserData user)? addDataUser,
    TResult? Function(String email, String documentId)? deleteDataUser,
    TResult? Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchDataUser,
    TResult Function(UserData? dataUser)? userDataUpdated,
    TResult Function(UserData user)? addDataUser,
    TResult Function(String email, String documentId)? deleteDataUser,
    TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult Function()? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataUser value) fetchDataUser,
    required TResult Function(_UserDataUpdated value) userDataUpdated,
    required TResult Function(_AddDataUser value) addDataUser,
    required TResult Function(_DeleteDataUser value) deleteDataUser,
    required TResult Function(_UpdateDataUser value) updateDataUser,
    required TResult Function(_Dispose value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataUser value)? fetchDataUser,
    TResult? Function(_UserDataUpdated value)? userDataUpdated,
    TResult? Function(_AddDataUser value)? addDataUser,
    TResult? Function(_DeleteDataUser value)? deleteDataUser,
    TResult? Function(_UpdateDataUser value)? updateDataUser,
    TResult? Function(_Dispose value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataUser value)? fetchDataUser,
    TResult Function(_UserDataUpdated value)? userDataUpdated,
    TResult Function(_AddDataUser value)? addDataUser,
    TResult Function(_DeleteDataUser value)? deleteDataUser,
    TResult Function(_UpdateDataUser value)? updateDataUser,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataUserEventCopyWith<$Res> {
  factory $DataUserEventCopyWith(
          DataUserEvent value, $Res Function(DataUserEvent) then) =
      _$DataUserEventCopyWithImpl<$Res, DataUserEvent>;
}

/// @nodoc
class _$DataUserEventCopyWithImpl<$Res, $Val extends DataUserEvent>
    implements $DataUserEventCopyWith<$Res> {
  _$DataUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDataUserImplCopyWith<$Res> {
  factory _$$FetchDataUserImplCopyWith(
          _$FetchDataUserImpl value, $Res Function(_$FetchDataUserImpl) then) =
      __$$FetchDataUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$FetchDataUserImplCopyWithImpl<$Res>
    extends _$DataUserEventCopyWithImpl<$Res, _$FetchDataUserImpl>
    implements _$$FetchDataUserImplCopyWith<$Res> {
  __$$FetchDataUserImplCopyWithImpl(
      _$FetchDataUserImpl _value, $Res Function(_$FetchDataUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$FetchDataUserImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchDataUserImpl implements _FetchDataUser {
  const _$FetchDataUserImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'DataUserEvent.fetchDataUser(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataUserImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataUserImplCopyWith<_$FetchDataUserImpl> get copyWith =>
      __$$FetchDataUserImplCopyWithImpl<_$FetchDataUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchDataUser,
    required TResult Function(UserData? dataUser) userDataUpdated,
    required TResult Function(UserData user) addDataUser,
    required TResult Function(String email, String documentId) deleteDataUser,
    required TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)
        updateDataUser,
    required TResult Function() dispose,
  }) {
    return fetchDataUser(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchDataUser,
    TResult? Function(UserData? dataUser)? userDataUpdated,
    TResult? Function(UserData user)? addDataUser,
    TResult? Function(String email, String documentId)? deleteDataUser,
    TResult? Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult? Function()? dispose,
  }) {
    return fetchDataUser?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchDataUser,
    TResult Function(UserData? dataUser)? userDataUpdated,
    TResult Function(UserData user)? addDataUser,
    TResult Function(String email, String documentId)? deleteDataUser,
    TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (fetchDataUser != null) {
      return fetchDataUser(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataUser value) fetchDataUser,
    required TResult Function(_UserDataUpdated value) userDataUpdated,
    required TResult Function(_AddDataUser value) addDataUser,
    required TResult Function(_DeleteDataUser value) deleteDataUser,
    required TResult Function(_UpdateDataUser value) updateDataUser,
    required TResult Function(_Dispose value) dispose,
  }) {
    return fetchDataUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataUser value)? fetchDataUser,
    TResult? Function(_UserDataUpdated value)? userDataUpdated,
    TResult? Function(_AddDataUser value)? addDataUser,
    TResult? Function(_DeleteDataUser value)? deleteDataUser,
    TResult? Function(_UpdateDataUser value)? updateDataUser,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return fetchDataUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataUser value)? fetchDataUser,
    TResult Function(_UserDataUpdated value)? userDataUpdated,
    TResult Function(_AddDataUser value)? addDataUser,
    TResult Function(_DeleteDataUser value)? deleteDataUser,
    TResult Function(_UpdateDataUser value)? updateDataUser,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (fetchDataUser != null) {
      return fetchDataUser(this);
    }
    return orElse();
  }
}

abstract class _FetchDataUser implements DataUserEvent {
  const factory _FetchDataUser(final String email) = _$FetchDataUserImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$FetchDataUserImplCopyWith<_$FetchDataUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDataUpdatedImplCopyWith<$Res> {
  factory _$$UserDataUpdatedImplCopyWith(_$UserDataUpdatedImpl value,
          $Res Function(_$UserDataUpdatedImpl) then) =
      __$$UserDataUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData? dataUser});
}

/// @nodoc
class __$$UserDataUpdatedImplCopyWithImpl<$Res>
    extends _$DataUserEventCopyWithImpl<$Res, _$UserDataUpdatedImpl>
    implements _$$UserDataUpdatedImplCopyWith<$Res> {
  __$$UserDataUpdatedImplCopyWithImpl(
      _$UserDataUpdatedImpl _value, $Res Function(_$UserDataUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataUser = freezed,
  }) {
    return _then(_$UserDataUpdatedImpl(
      freezed == dataUser
          ? _value.dataUser
          : dataUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc

class _$UserDataUpdatedImpl implements _UserDataUpdated {
  const _$UserDataUpdatedImpl(this.dataUser);

  @override
  final UserData? dataUser;

  @override
  String toString() {
    return 'DataUserEvent.userDataUpdated(dataUser: $dataUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataUpdatedImpl &&
            (identical(other.dataUser, dataUser) ||
                other.dataUser == dataUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataUpdatedImplCopyWith<_$UserDataUpdatedImpl> get copyWith =>
      __$$UserDataUpdatedImplCopyWithImpl<_$UserDataUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchDataUser,
    required TResult Function(UserData? dataUser) userDataUpdated,
    required TResult Function(UserData user) addDataUser,
    required TResult Function(String email, String documentId) deleteDataUser,
    required TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)
        updateDataUser,
    required TResult Function() dispose,
  }) {
    return userDataUpdated(dataUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchDataUser,
    TResult? Function(UserData? dataUser)? userDataUpdated,
    TResult? Function(UserData user)? addDataUser,
    TResult? Function(String email, String documentId)? deleteDataUser,
    TResult? Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult? Function()? dispose,
  }) {
    return userDataUpdated?.call(dataUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchDataUser,
    TResult Function(UserData? dataUser)? userDataUpdated,
    TResult Function(UserData user)? addDataUser,
    TResult Function(String email, String documentId)? deleteDataUser,
    TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (userDataUpdated != null) {
      return userDataUpdated(dataUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataUser value) fetchDataUser,
    required TResult Function(_UserDataUpdated value) userDataUpdated,
    required TResult Function(_AddDataUser value) addDataUser,
    required TResult Function(_DeleteDataUser value) deleteDataUser,
    required TResult Function(_UpdateDataUser value) updateDataUser,
    required TResult Function(_Dispose value) dispose,
  }) {
    return userDataUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataUser value)? fetchDataUser,
    TResult? Function(_UserDataUpdated value)? userDataUpdated,
    TResult? Function(_AddDataUser value)? addDataUser,
    TResult? Function(_DeleteDataUser value)? deleteDataUser,
    TResult? Function(_UpdateDataUser value)? updateDataUser,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return userDataUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataUser value)? fetchDataUser,
    TResult Function(_UserDataUpdated value)? userDataUpdated,
    TResult Function(_AddDataUser value)? addDataUser,
    TResult Function(_DeleteDataUser value)? deleteDataUser,
    TResult Function(_UpdateDataUser value)? updateDataUser,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (userDataUpdated != null) {
      return userDataUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserDataUpdated implements DataUserEvent {
  const factory _UserDataUpdated(final UserData? dataUser) =
      _$UserDataUpdatedImpl;

  UserData? get dataUser;
  @JsonKey(ignore: true)
  _$$UserDataUpdatedImplCopyWith<_$UserDataUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDataUserImplCopyWith<$Res> {
  factory _$$AddDataUserImplCopyWith(
          _$AddDataUserImpl value, $Res Function(_$AddDataUserImpl) then) =
      __$$AddDataUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData user});
}

/// @nodoc
class __$$AddDataUserImplCopyWithImpl<$Res>
    extends _$DataUserEventCopyWithImpl<$Res, _$AddDataUserImpl>
    implements _$$AddDataUserImplCopyWith<$Res> {
  __$$AddDataUserImplCopyWithImpl(
      _$AddDataUserImpl _value, $Res Function(_$AddDataUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AddDataUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

class _$AddDataUserImpl implements _AddDataUser {
  const _$AddDataUserImpl(this.user);

  @override
  final UserData user;

  @override
  String toString() {
    return 'DataUserEvent.addDataUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDataUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDataUserImplCopyWith<_$AddDataUserImpl> get copyWith =>
      __$$AddDataUserImplCopyWithImpl<_$AddDataUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchDataUser,
    required TResult Function(UserData? dataUser) userDataUpdated,
    required TResult Function(UserData user) addDataUser,
    required TResult Function(String email, String documentId) deleteDataUser,
    required TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)
        updateDataUser,
    required TResult Function() dispose,
  }) {
    return addDataUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchDataUser,
    TResult? Function(UserData? dataUser)? userDataUpdated,
    TResult? Function(UserData user)? addDataUser,
    TResult? Function(String email, String documentId)? deleteDataUser,
    TResult? Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult? Function()? dispose,
  }) {
    return addDataUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchDataUser,
    TResult Function(UserData? dataUser)? userDataUpdated,
    TResult Function(UserData user)? addDataUser,
    TResult Function(String email, String documentId)? deleteDataUser,
    TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (addDataUser != null) {
      return addDataUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataUser value) fetchDataUser,
    required TResult Function(_UserDataUpdated value) userDataUpdated,
    required TResult Function(_AddDataUser value) addDataUser,
    required TResult Function(_DeleteDataUser value) deleteDataUser,
    required TResult Function(_UpdateDataUser value) updateDataUser,
    required TResult Function(_Dispose value) dispose,
  }) {
    return addDataUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataUser value)? fetchDataUser,
    TResult? Function(_UserDataUpdated value)? userDataUpdated,
    TResult? Function(_AddDataUser value)? addDataUser,
    TResult? Function(_DeleteDataUser value)? deleteDataUser,
    TResult? Function(_UpdateDataUser value)? updateDataUser,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return addDataUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataUser value)? fetchDataUser,
    TResult Function(_UserDataUpdated value)? userDataUpdated,
    TResult Function(_AddDataUser value)? addDataUser,
    TResult Function(_DeleteDataUser value)? deleteDataUser,
    TResult Function(_UpdateDataUser value)? updateDataUser,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (addDataUser != null) {
      return addDataUser(this);
    }
    return orElse();
  }
}

abstract class _AddDataUser implements DataUserEvent {
  const factory _AddDataUser(final UserData user) = _$AddDataUserImpl;

  UserData get user;
  @JsonKey(ignore: true)
  _$$AddDataUserImplCopyWith<_$AddDataUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDataUserImplCopyWith<$Res> {
  factory _$$DeleteDataUserImplCopyWith(_$DeleteDataUserImpl value,
          $Res Function(_$DeleteDataUserImpl) then) =
      __$$DeleteDataUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String documentId});
}

/// @nodoc
class __$$DeleteDataUserImplCopyWithImpl<$Res>
    extends _$DataUserEventCopyWithImpl<$Res, _$DeleteDataUserImpl>
    implements _$$DeleteDataUserImplCopyWith<$Res> {
  __$$DeleteDataUserImplCopyWithImpl(
      _$DeleteDataUserImpl _value, $Res Function(_$DeleteDataUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? documentId = null,
  }) {
    return _then(_$DeleteDataUserImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteDataUserImpl implements _DeleteDataUser {
  const _$DeleteDataUserImpl(this.email, this.documentId);

  @override
  final String email;
  @override
  final String documentId;

  @override
  String toString() {
    return 'DataUserEvent.deleteDataUser(email: $email, documentId: $documentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDataUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, documentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDataUserImplCopyWith<_$DeleteDataUserImpl> get copyWith =>
      __$$DeleteDataUserImplCopyWithImpl<_$DeleteDataUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchDataUser,
    required TResult Function(UserData? dataUser) userDataUpdated,
    required TResult Function(UserData user) addDataUser,
    required TResult Function(String email, String documentId) deleteDataUser,
    required TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)
        updateDataUser,
    required TResult Function() dispose,
  }) {
    return deleteDataUser(email, documentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchDataUser,
    TResult? Function(UserData? dataUser)? userDataUpdated,
    TResult? Function(UserData user)? addDataUser,
    TResult? Function(String email, String documentId)? deleteDataUser,
    TResult? Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult? Function()? dispose,
  }) {
    return deleteDataUser?.call(email, documentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchDataUser,
    TResult Function(UserData? dataUser)? userDataUpdated,
    TResult Function(UserData user)? addDataUser,
    TResult Function(String email, String documentId)? deleteDataUser,
    TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (deleteDataUser != null) {
      return deleteDataUser(email, documentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataUser value) fetchDataUser,
    required TResult Function(_UserDataUpdated value) userDataUpdated,
    required TResult Function(_AddDataUser value) addDataUser,
    required TResult Function(_DeleteDataUser value) deleteDataUser,
    required TResult Function(_UpdateDataUser value) updateDataUser,
    required TResult Function(_Dispose value) dispose,
  }) {
    return deleteDataUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataUser value)? fetchDataUser,
    TResult? Function(_UserDataUpdated value)? userDataUpdated,
    TResult? Function(_AddDataUser value)? addDataUser,
    TResult? Function(_DeleteDataUser value)? deleteDataUser,
    TResult? Function(_UpdateDataUser value)? updateDataUser,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return deleteDataUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataUser value)? fetchDataUser,
    TResult Function(_UserDataUpdated value)? userDataUpdated,
    TResult Function(_AddDataUser value)? addDataUser,
    TResult Function(_DeleteDataUser value)? deleteDataUser,
    TResult Function(_UpdateDataUser value)? updateDataUser,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (deleteDataUser != null) {
      return deleteDataUser(this);
    }
    return orElse();
  }
}

abstract class _DeleteDataUser implements DataUserEvent {
  const factory _DeleteDataUser(final String email, final String documentId) =
      _$DeleteDataUserImpl;

  String get email;
  String get documentId;
  @JsonKey(ignore: true)
  _$$DeleteDataUserImplCopyWith<_$DeleteDataUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDataUserImplCopyWith<$Res> {
  factory _$$UpdateDataUserImplCopyWith(_$UpdateDataUserImpl value,
          $Res Function(_$UpdateDataUserImpl) then) =
      __$$UpdateDataUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email, String documentId, Map<String, dynamic> updatedData});
}

/// @nodoc
class __$$UpdateDataUserImplCopyWithImpl<$Res>
    extends _$DataUserEventCopyWithImpl<$Res, _$UpdateDataUserImpl>
    implements _$$UpdateDataUserImplCopyWith<$Res> {
  __$$UpdateDataUserImplCopyWithImpl(
      _$UpdateDataUserImpl _value, $Res Function(_$UpdateDataUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? documentId = null,
    Object? updatedData = null,
  }) {
    return _then(_$UpdateDataUserImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      null == updatedData
          ? _value._updatedData
          : updatedData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UpdateDataUserImpl implements _UpdateDataUser {
  const _$UpdateDataUserImpl(
      this.email, this.documentId, final Map<String, dynamic> updatedData)
      : _updatedData = updatedData;

  @override
  final String email;
  @override
  final String documentId;
  final Map<String, dynamic> _updatedData;
  @override
  Map<String, dynamic> get updatedData {
    if (_updatedData is EqualUnmodifiableMapView) return _updatedData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_updatedData);
  }

  @override
  String toString() {
    return 'DataUserEvent.updateDataUser(email: $email, documentId: $documentId, updatedData: $updatedData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDataUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            const DeepCollectionEquality()
                .equals(other._updatedData, _updatedData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, documentId,
      const DeepCollectionEquality().hash(_updatedData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDataUserImplCopyWith<_$UpdateDataUserImpl> get copyWith =>
      __$$UpdateDataUserImplCopyWithImpl<_$UpdateDataUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchDataUser,
    required TResult Function(UserData? dataUser) userDataUpdated,
    required TResult Function(UserData user) addDataUser,
    required TResult Function(String email, String documentId) deleteDataUser,
    required TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)
        updateDataUser,
    required TResult Function() dispose,
  }) {
    return updateDataUser(email, documentId, updatedData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchDataUser,
    TResult? Function(UserData? dataUser)? userDataUpdated,
    TResult? Function(UserData user)? addDataUser,
    TResult? Function(String email, String documentId)? deleteDataUser,
    TResult? Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult? Function()? dispose,
  }) {
    return updateDataUser?.call(email, documentId, updatedData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchDataUser,
    TResult Function(UserData? dataUser)? userDataUpdated,
    TResult Function(UserData user)? addDataUser,
    TResult Function(String email, String documentId)? deleteDataUser,
    TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (updateDataUser != null) {
      return updateDataUser(email, documentId, updatedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataUser value) fetchDataUser,
    required TResult Function(_UserDataUpdated value) userDataUpdated,
    required TResult Function(_AddDataUser value) addDataUser,
    required TResult Function(_DeleteDataUser value) deleteDataUser,
    required TResult Function(_UpdateDataUser value) updateDataUser,
    required TResult Function(_Dispose value) dispose,
  }) {
    return updateDataUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataUser value)? fetchDataUser,
    TResult? Function(_UserDataUpdated value)? userDataUpdated,
    TResult? Function(_AddDataUser value)? addDataUser,
    TResult? Function(_DeleteDataUser value)? deleteDataUser,
    TResult? Function(_UpdateDataUser value)? updateDataUser,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return updateDataUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataUser value)? fetchDataUser,
    TResult Function(_UserDataUpdated value)? userDataUpdated,
    TResult Function(_AddDataUser value)? addDataUser,
    TResult Function(_DeleteDataUser value)? deleteDataUser,
    TResult Function(_UpdateDataUser value)? updateDataUser,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (updateDataUser != null) {
      return updateDataUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateDataUser implements DataUserEvent {
  const factory _UpdateDataUser(final String email, final String documentId,
      final Map<String, dynamic> updatedData) = _$UpdateDataUserImpl;

  String get email;
  String get documentId;
  Map<String, dynamic> get updatedData;
  @JsonKey(ignore: true)
  _$$UpdateDataUserImplCopyWith<_$UpdateDataUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeImplCopyWith<$Res> {
  factory _$$DisposeImplCopyWith(
          _$DisposeImpl value, $Res Function(_$DisposeImpl) then) =
      __$$DisposeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeImplCopyWithImpl<$Res>
    extends _$DataUserEventCopyWithImpl<$Res, _$DisposeImpl>
    implements _$$DisposeImplCopyWith<$Res> {
  __$$DisposeImplCopyWithImpl(
      _$DisposeImpl _value, $Res Function(_$DisposeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisposeImpl implements _Dispose {
  const _$DisposeImpl();

  @override
  String toString() {
    return 'DataUserEvent.dispose()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisposeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchDataUser,
    required TResult Function(UserData? dataUser) userDataUpdated,
    required TResult Function(UserData user) addDataUser,
    required TResult Function(String email, String documentId) deleteDataUser,
    required TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)
        updateDataUser,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchDataUser,
    TResult? Function(UserData? dataUser)? userDataUpdated,
    TResult? Function(UserData user)? addDataUser,
    TResult? Function(String email, String documentId)? deleteDataUser,
    TResult? Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchDataUser,
    TResult Function(UserData? dataUser)? userDataUpdated,
    TResult Function(UserData user)? addDataUser,
    TResult Function(String email, String documentId)? deleteDataUser,
    TResult Function(
            String email, String documentId, Map<String, dynamic> updatedData)?
        updateDataUser,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataUser value) fetchDataUser,
    required TResult Function(_UserDataUpdated value) userDataUpdated,
    required TResult Function(_AddDataUser value) addDataUser,
    required TResult Function(_DeleteDataUser value) deleteDataUser,
    required TResult Function(_UpdateDataUser value) updateDataUser,
    required TResult Function(_Dispose value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataUser value)? fetchDataUser,
    TResult? Function(_UserDataUpdated value)? userDataUpdated,
    TResult? Function(_AddDataUser value)? addDataUser,
    TResult? Function(_DeleteDataUser value)? deleteDataUser,
    TResult? Function(_UpdateDataUser value)? updateDataUser,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataUser value)? fetchDataUser,
    TResult Function(_UserDataUpdated value)? userDataUpdated,
    TResult Function(_AddDataUser value)? addDataUser,
    TResult Function(_DeleteDataUser value)? deleteDataUser,
    TResult Function(_UpdateDataUser value)? updateDataUser,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class _Dispose implements DataUserEvent {
  const factory _Dispose() = _$DisposeImpl;
}

/// @nodoc
mixin _$DataUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserData> dataUserList) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserData> dataUserList)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserData> dataUserList)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataUserStateCopyWith<$Res> {
  factory $DataUserStateCopyWith(
          DataUserState value, $Res Function(DataUserState) then) =
      _$DataUserStateCopyWithImpl<$Res, DataUserState>;
}

/// @nodoc
class _$DataUserStateCopyWithImpl<$Res, $Val extends DataUserState>
    implements $DataUserStateCopyWith<$Res> {
  _$DataUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DataUserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DataUserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserData> dataUserList) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserData> dataUserList)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserData> dataUserList)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DataUserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DataUserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DataUserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserData> dataUserList) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserData> dataUserList)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserData> dataUserList)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DataUserState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserData> dataUserList});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DataUserStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataUserList = null,
  }) {
    return _then(_$LoadedImpl(
      null == dataUserList
          ? _value._dataUserList
          : dataUserList // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<UserData> dataUserList)
      : _dataUserList = dataUserList;

  final List<UserData> _dataUserList;
  @override
  List<UserData> get dataUserList {
    if (_dataUserList is EqualUnmodifiableListView) return _dataUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataUserList);
  }

  @override
  String toString() {
    return 'DataUserState.loaded(dataUserList: $dataUserList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._dataUserList, _dataUserList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dataUserList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserData> dataUserList) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loaded(dataUserList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserData> dataUserList)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(dataUserList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserData> dataUserList)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(dataUserList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DataUserState {
  const factory _Loaded(final List<UserData> dataUserList) = _$LoadedImpl;

  List<UserData> get dataUserList;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DataUserStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DataUserState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserData> dataUserList) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserData> dataUserList)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserData> dataUserList)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements DataUserState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DataUserStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DataUserState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserData> dataUserList) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserData> dataUserList)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserData> dataUserList)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DataUserState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
