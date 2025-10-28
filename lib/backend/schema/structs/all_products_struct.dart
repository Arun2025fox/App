// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllProductsStruct extends BaseStruct {
  AllProductsStruct({
    List<ProductStruct>? products,
  }) : _products = products;

  // "products" field.
  List<ProductStruct>? _products;
  List<ProductStruct> get products => _products ?? const [];
  set products(List<ProductStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  static AllProductsStruct fromMap(Map<String, dynamic> data) =>
      AllProductsStruct(
        products: getStructList(
          data['products'],
          ProductStruct.fromMap,
        ),
      );

  static AllProductsStruct? maybeFromMap(dynamic data) => data is Map
      ? AllProductsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'products': _products?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static AllProductsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllProductsStruct(
        products: deserializeStructParam<ProductStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AllProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AllProductsStruct &&
        listEquality.equals(products, other.products);
  }

  @override
  int get hashCode => const ListEquality().hash([products]);
}

AllProductsStruct createAllProductsStruct() => AllProductsStruct();
