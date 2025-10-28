import '../database.dart';

class WishlistTable extends SupabaseTable<WishlistRow> {
  @override
  String get tableName => 'wishlist';

  @override
  WishlistRow createRow(Map<String, dynamic> data) => WishlistRow(data);
}

class WishlistRow extends SupabaseDataRow {
  WishlistRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WishlistTable();

  String get wishlistId => getField<String>('wishlist_id')!;
  set wishlistId(String value) => setField<String>('wishlist_id', value);

  int? get customerId => getField<int>('customer_id');
  set customerId(int? value) => setField<int>('customer_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
