// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SinglecategoryStruct extends BaseStruct {
  SinglecategoryStruct({
    int? id,
    String? categoryName,
    List<SinglesubcategoryStruct>? subcategories,
  })  : _id = id,
        _categoryName = categoryName,
        _subcategories = subcategories;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;

  bool hasCategoryName() => _categoryName != null;

  // "subcategories" field.
  List<SinglesubcategoryStruct>? _subcategories;
  List<SinglesubcategoryStruct> get subcategories => _subcategories ?? const [];
  set subcategories(List<SinglesubcategoryStruct>? val) => _subcategories = val;

  void updateSubcategories(Function(List<SinglesubcategoryStruct>) updateFn) {
    updateFn(_subcategories ??= []);
  }

  bool hasSubcategories() => _subcategories != null;

  static SinglecategoryStruct fromMap(Map<String, dynamic> data) =>
      SinglecategoryStruct(
        id: castToType<int>(data['id']),
        categoryName: data['category_name'] as String?,
        subcategories: getStructList(
          data['subcategories'],
          SinglesubcategoryStruct.fromMap,
        ),
      );

  static SinglecategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? SinglecategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'category_name': _categoryName,
        'subcategories': _subcategories?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'category_name': serializeParam(
          _categoryName,
          ParamType.String,
        ),
        'subcategories': serializeParam(
          _subcategories,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SinglecategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SinglecategoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        categoryName: deserializeParam(
          data['category_name'],
          ParamType.String,
          false,
        ),
        subcategories: deserializeStructParam<SinglesubcategoryStruct>(
          data['subcategories'],
          ParamType.DataStruct,
          true,
          structBuilder: SinglesubcategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SinglecategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SinglecategoryStruct &&
        id == other.id &&
        categoryName == other.categoryName &&
        listEquality.equals(subcategories, other.subcategories);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, categoryName, subcategories]);
}

SinglecategoryStruct createSinglecategoryStruct({
  int? id,
  String? categoryName,
}) =>
    SinglecategoryStruct(
      id: id,
      categoryName: categoryName,
    );
