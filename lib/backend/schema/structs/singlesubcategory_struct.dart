// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SinglesubcategoryStruct extends BaseStruct {
  SinglesubcategoryStruct({
    int? subcategoryId,
    String? name,
  })  : _subcategoryId = subcategoryId,
        _name = name;

  // "subcategory_id" field.
  int? _subcategoryId;
  int get subcategoryId => _subcategoryId ?? 0;
  set subcategoryId(int? val) => _subcategoryId = val;

  void incrementSubcategoryId(int amount) =>
      subcategoryId = subcategoryId + amount;

  bool hasSubcategoryId() => _subcategoryId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static SinglesubcategoryStruct fromMap(Map<String, dynamic> data) =>
      SinglesubcategoryStruct(
        subcategoryId: castToType<int>(data['subcategory_id']),
        name: data['name'] as String?,
      );

  static SinglesubcategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? SinglesubcategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'subcategory_id': _subcategoryId,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subcategory_id': serializeParam(
          _subcategoryId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static SinglesubcategoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SinglesubcategoryStruct(
        subcategoryId: deserializeParam(
          data['subcategory_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SinglesubcategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SinglesubcategoryStruct &&
        subcategoryId == other.subcategoryId &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([subcategoryId, name]);
}

SinglesubcategoryStruct createSinglesubcategoryStruct({
  int? subcategoryId,
  String? name,
}) =>
    SinglesubcategoryStruct(
      subcategoryId: subcategoryId,
      name: name,
    );
