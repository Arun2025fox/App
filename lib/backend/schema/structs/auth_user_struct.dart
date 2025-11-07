// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Store data returned from Supabase Auth (token, user ID, email)
class AuthUserStruct extends BaseStruct {
  AuthUserStruct({
    /// Supabase auth.user.id
    String? id,

    /// Supabase user email
    String? email,

    /// Returned after login/signup
    String? accessToken,

    /// Returned after login/signup
    String? refreshToken,

    /// for debugging
    String? createdAt,
  })  : _id = id,
        _email = email,
        _accessToken = accessToken,
        _refreshToken = refreshToken,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static AuthUserStruct fromMap(Map<String, dynamic> data) => AuthUserStruct(
        id: data['id'] as String?,
        email: data['email'] as String?,
        accessToken: data['accessToken'] as String?,
        refreshToken: data['refreshToken'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static AuthUserStruct? maybeFromMap(dynamic data) =>
      data is Map ? AuthUserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'accessToken': _accessToken,
        'refreshToken': _refreshToken,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static AuthUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      AuthUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AuthUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthUserStruct &&
        id == other.id &&
        email == other.email &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, email, accessToken, refreshToken, createdAt]);
}

AuthUserStruct createAuthUserStruct({
  String? id,
  String? email,
  String? accessToken,
  String? refreshToken,
  String? createdAt,
}) =>
    AuthUserStruct(
      id: id,
      email: email,
      accessToken: accessToken,
      refreshToken: refreshToken,
      createdAt: createdAt,
    );
