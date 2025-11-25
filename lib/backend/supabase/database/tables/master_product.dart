import '../database.dart';

class MasterProductTable extends SupabaseTable<MasterProductRow> {
  @override
  String get tableName => 'master_product';

  @override
  MasterProductRow createRow(Map<String, dynamic> data) =>
      MasterProductRow(data);
}

class MasterProductRow extends SupabaseDataRow {
  MasterProductRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MasterProductTable();

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int? get subcategoryId => getField<int>('subcategory_id');
  set subcategoryId(int? value) => setField<int>('subcategory_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  bool? get hasVariant => getField<bool>('has_variant');
  set hasVariant(bool? value) => setField<bool>('has_variant', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  bool get isActive => getField<bool>('is_Active')!;
  set isActive(bool value) => setField<bool>('is_Active', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  int? get reviewCount => getField<int>('review_count');
  set reviewCount(int? value) => setField<int>('review_count', value);
}
