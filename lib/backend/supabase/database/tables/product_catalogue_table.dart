import '../database.dart';

class ProductCatalogueTableTable
    extends SupabaseTable<ProductCatalogueTableRow> {
  @override
  String get tableName => 'product_catalogue_table';

  @override
  ProductCatalogueTableRow createRow(Map<String, dynamic> data) =>
      ProductCatalogueTableRow(data);
}

class ProductCatalogueTableRow extends SupabaseDataRow {
  ProductCatalogueTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductCatalogueTableTable();

  double? get catalogueId => getField<double>('catalogue_id');
  set catalogueId(double? value) => setField<double>('catalogue_id', value);

  int? get variantId => getField<int>('variant_id');
  set variantId(int? value) => setField<int>('variant_id', value);

  double? get comboId => getField<double>('combo_id');
  set comboId(double? value) => setField<double>('combo_id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get itemName => getField<String>('item_name');
  set itemName(String? value) => setField<String>('item_name', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);
}
