// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SinglecategoryStruct extends BaseStruct {
  SinglecategoryStruct({
    int? categoryId,
    String? categoryName,
    List<SinglesubcategoryStruct>? subcategories,
  })  : _categoryId = categoryId,
        _categoryName = categoryName,
        _subcategories = subcategories;

  // "category_id" field.
  int? _categoryId;
  int get categoryId => _categoryId ?? 0;
  set categoryId(int? val) => _categoryId = val;

  void incrementCategoryId(int amount) => categoryId = categoryId + amount;

  bool hasCategoryId() => _categoryId != null;

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
        categoryId: castToType<int>(data['category_id']),
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
        'category_id': _categoryId,
        'category_name': _categoryName,
        'subcategories': _subcategories?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category_id': serializeParam(
          _categoryId,
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
        categoryId: deserializeParam(
          data['category_id'],
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
        categoryId == other.categoryId &&
        categoryName == other.categoryName &&
        listEquality.equals(subcategories, other.subcategories);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([categoryId, categoryName, subcategories]);
}

SinglecategoryStruct createSinglecategoryStruct({
  int? categoryId,
  String? categoryName,
}) =>
    SinglecategoryStruct(
      categoryId: categoryId,
      categoryName: categoryName,
    );
