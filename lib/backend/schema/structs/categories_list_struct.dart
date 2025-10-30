// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriesListStruct extends BaseStruct {
  CategoriesListStruct({
    List<SinglecategoryStruct>? categories,
  }) : _categories = categories;

  // "categories" field.
  List<SinglecategoryStruct>? _categories;
  List<SinglecategoryStruct> get categories => _categories ?? const [];
  set categories(List<SinglecategoryStruct>? val) => _categories = val;

  void updateCategories(Function(List<SinglecategoryStruct>) updateFn) {
    updateFn(_categories ??= []);
  }

  bool hasCategories() => _categories != null;

  static CategoriesListStruct fromMap(Map<String, dynamic> data) =>
      CategoriesListStruct(
        categories: getStructList(
          data['categories'],
          SinglecategoryStruct.fromMap,
        ),
      );

  static CategoriesListStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriesListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'categories': _categories?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'categories': serializeParam(
          _categories,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CategoriesListStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriesListStruct(
        categories: deserializeStructParam<SinglecategoryStruct>(
          data['categories'],
          ParamType.DataStruct,
          true,
          structBuilder: SinglecategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CategoriesListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CategoriesListStruct &&
        listEquality.equals(categories, other.categories);
  }

  @override
  int get hashCode => const ListEquality().hash([categories]);
}

CategoriesListStruct createCategoriesListStruct() => CategoriesListStruct();
