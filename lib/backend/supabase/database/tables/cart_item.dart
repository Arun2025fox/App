import '../database.dart';

class CartItemTable extends SupabaseTable<CartItemRow> {
  @override
  String get tableName => 'cart_item';

  @override
  CartItemRow createRow(Map<String, dynamic> data) => CartItemRow(data);
}

class CartItemRow extends SupabaseDataRow {
  CartItemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartItemTable();

  String get cartItemId => getField<String>('cart_item_id')!;
  set cartItemId(String value) => setField<String>('cart_item_id', value);

  String? get cartId => getField<String>('cart_id');
  set cartId(String? value) => setField<String>('cart_id', value);

  int? get variantId => getField<int>('variant_id');
  set variantId(int? value) => setField<int>('variant_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  double get priceAtAdd => getField<double>('price_at_add')!;
  set priceAtAdd(double value) => setField<double>('price_at_add', value);

  DateTime? get addedAt => getField<DateTime>('added_at');
  set addedAt(DateTime? value) => setField<DateTime>('added_at', value);
}
