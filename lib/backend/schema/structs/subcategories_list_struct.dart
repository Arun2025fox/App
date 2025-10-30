// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubcategoriesListStruct extends BaseStruct {
  SubcategoriesListStruct({
    List<SinglesubcategoryStruct>? subcategories,
  }) : _subcategories = subcategories;

  // "subcategories" field.
  List<SinglesubcategoryStruct>? _subcategories;
  List<SinglesubcategoryStruct> get subcategories => _subcategories ?? const [];
  set subcategories(List<SinglesubcategoryStruct>? val) => _subcategories = val;

  void updateSubcategories(Function(List<SinglesubcategoryStruct>) updateFn) {
    updateFn(_subcategories ??= []);
  }

  bool hasSubcategories() => _subcategories != null;

  static SubcategoriesListStruct fromMap(Map<String, dynamic> data) =>
      SubcategoriesListStruct(
        subcategories: getStructList(
          data['subcategories'],
          SinglesubcategoryStruct.fromMap,
        ),
      );

  static SubcategoriesListStruct? maybeFromMap(dynamic data) => data is Map
      ? SubcategoriesListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'subcategories': _subcategories?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subcategories': serializeParam(
          _subcategories,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SubcategoriesListStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SubcategoriesListStruct(
        subcategories: deserializeStructParam<SinglesubcategoryStruct>(
          data['subcategories'],
          ParamType.DataStruct,
          true,
          structBuilder: SinglesubcategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SubcategoriesListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SubcategoriesListStruct &&
        listEquality.equals(subcategories, other.subcategories);
  }

  @override
  int get hashCode => const ListEquality().hash([subcategories]);
}

SubcategoriesListStruct createSubcategoriesListStruct() =>
    SubcategoriesListStruct();
