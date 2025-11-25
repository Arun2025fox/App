import '../database.dart';

class SubcategoriesTable extends SupabaseTable<SubcategoriesRow> {
  @override
  String get tableName => 'subcategories';

  @override
  SubcategoriesRow createRow(Map<String, dynamic> data) =>
      SubcategoriesRow(data);
}

class SubcategoriesRow extends SupabaseDataRow {
  SubcategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubcategoriesTable();

  int get subcategoryId => getField<int>('subcategory_id')!;
  set subcategoryId(int value) => setField<int>('subcategory_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
