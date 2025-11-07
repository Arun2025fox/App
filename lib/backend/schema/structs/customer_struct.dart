// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// for fetching from customers table
class CustomerStruct extends BaseStruct {
  CustomerStruct({
    int? customerId,
    String? fullName,
    String? mobileNumber,
    String? email,
    String? address,
    String? state,
    String? pincode,
    String? authId,
  })  : _customerId = customerId,
        _fullName = fullName,
        _mobileNumber = mobileNumber,
        _email = email,
        _address = address,
        _state = state,
        _pincode = pincode,
        _authId = authId;

  // "customerId" field.
  int? _customerId;
  int get customerId => _customerId ?? 0;
  set customerId(int? val) => _customerId = val;

  void incrementCustomerId(int amount) => customerId = customerId + amount;

  bool hasCustomerId() => _customerId != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "pincode" field.
  String? _pincode;
  String get pincode => _pincode ?? '';
  set pincode(String? val) => _pincode = val;

  bool hasPincode() => _pincode != null;

  // "authId" field.
  String? _authId;
  String get authId => _authId ?? '';
  set authId(String? val) => _authId = val;

  bool hasAuthId() => _authId != null;

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        customerId: castToType<int>(data['customerId']),
        fullName: data['fullName'] as String?,
        mobileNumber: data['mobileNumber'] as String?,
        email: data['email'] as String?,
        address: data['address'] as String?,
        state: data['state'] as String?,
        pincode: data['pincode'] as String?,
        authId: data['authId'] as String?,
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'customerId': _customerId,
        'fullName': _fullName,
        'mobileNumber': _mobileNumber,
        'email': _email,
        'address': _address,
        'state': _state,
        'pincode': _pincode,
        'authId': _authId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customerId': serializeParam(
          _customerId,
          ParamType.int,
        ),
        'fullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'pincode': serializeParam(
          _pincode,
          ParamType.String,
        ),
        'authId': serializeParam(
          _authId,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
        customerId: deserializeParam(
          data['customerId'],
          ParamType.int,
          false,
        ),
        fullName: deserializeParam(
          data['fullName'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        pincode: deserializeParam(
          data['pincode'],
          ParamType.String,
          false,
        ),
        authId: deserializeParam(
          data['authId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct &&
        customerId == other.customerId &&
        fullName == other.fullName &&
        mobileNumber == other.mobileNumber &&
        email == other.email &&
        address == other.address &&
        state == other.state &&
        pincode == other.pincode &&
        authId == other.authId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        customerId,
        fullName,
        mobileNumber,
        email,
        address,
        state,
        pincode,
        authId
      ]);
}

CustomerStruct createCustomerStruct({
  int? customerId,
  String? fullName,
  String? mobileNumber,
  String? email,
  String? address,
  String? state,
  String? pincode,
  String? authId,
}) =>
    CustomerStruct(
      customerId: customerId,
      fullName: fullName,
      mobileNumber: mobileNumber,
      email: email,
      address: address,
      state: state,
      pincode: pincode,
      authId: authId,
    );
