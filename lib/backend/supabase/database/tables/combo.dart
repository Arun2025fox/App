import '../database.dart';

class ComboTable extends SupabaseTable<ComboRow> {
  @override
  String get tableName => 'combo';

  @override
  ComboRow createRow(Map<String, dynamic> data) => ComboRow(data);
}

class ComboRow extends SupabaseDataRow {
  ComboRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComboTable();

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double get comboQuantity => getField<double>('combo_quantity')!;
  set comboQuantity(double value) => setField<double>('combo_quantity', value);

  double? get saleprice => getField<double>('saleprice');
  set saleprice(double? value) => setField<double>('saleprice', value);

  double get comboId => getField<double>('combo_id')!;
  set comboId(double value) => setField<double>('combo_id', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  double? get regularprice => getField<double>('regularprice');
  set regularprice(double? value) => setField<double>('regularprice', value);

  int? get subcategoryId => getField<int>('subcategory_id');
  set subcategoryId(int? value) => setField<int>('subcategory_id', value);
}
