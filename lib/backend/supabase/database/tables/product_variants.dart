import '../database.dart';

class ProductVariantsTable extends SupabaseTable<ProductVariantsRow> {
  @override
  String get tableName => 'product_variants';

  @override
  ProductVariantsRow createRow(Map<String, dynamic> data) =>
      ProductVariantsRow(data);
}

class ProductVariantsRow extends SupabaseDataRow {
  ProductVariantsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductVariantsTable();

  String? get variantName => getField<String>('variant_name');
  set variantName(String? value) => setField<String>('variant_name', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  double? get regularprice => getField<double>('regularprice');
  set regularprice(double? value) => setField<double>('regularprice', value);

  int? get stock => getField<int>('stock');
  set stock(int? value) => setField<int>('stock', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  double? get length => getField<double>('length');
  set length(double? value) => setField<double>('length', value);

  bool? get isVariant => getField<bool>('is_variant');
  set isVariant(bool? value) => setField<bool>('is_variant', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  double? get saleprice => getField<double>('saleprice');
  set saleprice(double? value) => setField<double>('saleprice', value);

  int get variantId => getField<int>('variant_id')!;
  set variantId(int value) => setField<int>('variant_id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  double? get costprice => getField<double>('costprice');
  set costprice(double? value) => setField<double>('costprice', value);

  bool get isActive => getField<bool>('is_Active')!;
  set isActive(bool value) => setField<bool>('is_Active', value);
}
