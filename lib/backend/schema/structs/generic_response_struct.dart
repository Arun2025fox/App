// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// for Forgot Password, simple responses
class GenericResponseStruct extends BaseStruct {
  GenericResponseStruct({
    /// message
    String? status,
    String? message,
  })  : _status = status,
        _message = message;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static GenericResponseStruct fromMap(Map<String, dynamic> data) =>
      GenericResponseStruct(
        status: data['status'] as String?,
        message: data['message'] as String?,
      );

  static GenericResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? GenericResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static GenericResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      GenericResponseStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GenericResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GenericResponseStruct &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([status, message]);
}

GenericResponseStruct createGenericResponseStruct({
  String? status,
  String? message,
}) =>
    GenericResponseStruct(
      status: status,
      message: message,
    );
