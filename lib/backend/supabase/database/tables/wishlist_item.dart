import '../database.dart';

class WishlistItemTable extends SupabaseTable<WishlistItemRow> {
  @override
  String get tableName => 'wishlist_item';

  @override
  WishlistItemRow createRow(Map<String, dynamic> data) => WishlistItemRow(data);
}

class WishlistItemRow extends SupabaseDataRow {
  WishlistItemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WishlistItemTable();

  String get wishlistItemId => getField<String>('wishlist_item_id')!;
  set wishlistItemId(String value) =>
      setField<String>('wishlist_item_id', value);

  String? get wishlistId => getField<String>('wishlist_id');
  set wishlistId(String? value) => setField<String>('wishlist_id', value);

  int? get variantId => getField<int>('variant_id');
  set variantId(int? value) => setField<int>('variant_id', value);

  DateTime? get addedAt => getField<DateTime>('added_at');
  set addedAt(DateTime? value) => setField<DateTime>('added_at', value);
}
