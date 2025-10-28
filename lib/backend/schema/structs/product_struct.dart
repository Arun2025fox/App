// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    String? name,
    double? saleprice,
    String? imageUrl,
    double? ratings,
    int? productId,
  })  : _name = name,
        _saleprice = saleprice,
        _imageUrl = imageUrl,
        _ratings = ratings,
        _productId = productId;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "saleprice" field.
  double? _saleprice;
  double get saleprice => _saleprice ?? 0.0;
  set saleprice(double? val) => _saleprice = val;

  void incrementSaleprice(double amount) => saleprice = saleprice + amount;

  bool hasSaleprice() => _saleprice != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "ratings" field.
  double? _ratings;
  double get ratings => _ratings ?? 0.0;
  set ratings(double? val) => _ratings = val;

  void incrementRatings(double amount) => ratings = ratings + amount;

  bool hasRatings() => _ratings != null;

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        name: data['name'] as String?,
        saleprice: castToType<double>(data['saleprice']),
        imageUrl: data['image_url'] as String?,
        ratings: castToType<double>(data['ratings']),
        productId: castToType<int>(data['product_id']),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'saleprice': _saleprice,
        'image_url': _imageUrl,
        'ratings': _ratings,
        'product_id': _productId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'saleprice': serializeParam(
          _saleprice,
          ParamType.double,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'ratings': serializeParam(
          _ratings,
          ParamType.double,
        ),
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        saleprice: deserializeParam(
          data['saleprice'],
          ParamType.double,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
        ratings: deserializeParam(
          data['ratings'],
          ParamType.double,
          false,
        ),
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        name == other.name &&
        saleprice == other.saleprice &&
        imageUrl == other.imageUrl &&
        ratings == other.ratings &&
        productId == other.productId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, saleprice, imageUrl, ratings, productId]);
}

ProductStruct createProductStruct({
  String? name,
  double? saleprice,
  String? imageUrl,
  double? ratings,
  int? productId,
}) =>
    ProductStruct(
      name: name,
      saleprice: saleprice,
      imageUrl: imageUrl,
      ratings: ratings,
      productId: productId,
    );
