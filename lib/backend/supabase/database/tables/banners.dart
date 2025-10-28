import '../database.dart';

class BannersTable extends SupabaseTable<BannersRow> {
  @override
  String get tableName => 'banners';

  @override
  BannersRow createRow(Map<String, dynamic> data) => BannersRow(data);
}

class BannersRow extends SupabaseDataRow {
  BannersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BannersTable();

  String get bannerId => getField<String>('banner_id')!;
  set bannerId(String value) => setField<String>('banner_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get subtitle => getField<String>('subtitle');
  set subtitle(String? value) => setField<String>('subtitle', value);

  String get imageUrl => getField<String>('image_url')!;
  set imageUrl(String value) => setField<String>('image_url', value);

  String? get redirectUrl => getField<String>('redirect_url');
  set redirectUrl(String? value) => setField<String>('redirect_url', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
