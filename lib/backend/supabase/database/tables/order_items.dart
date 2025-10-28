import '../database.dart';

class OrderItemsTable extends SupabaseTable<OrderItemsRow> {
  @override
  String get tableName => 'order_items';

  @override
  OrderItemsRow createRow(Map<String, dynamic> data) => OrderItemsRow(data);
}

class OrderItemsRow extends SupabaseDataRow {
  OrderItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderItemsTable();

  String get orderItemId => getField<String>('order_item_id')!;
  set orderItemId(String value) => setField<String>('order_item_id', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get catalogueProductId => getField<int>('catalogue_product_id');
  set catalogueProductId(int? value) =>
      setField<int>('catalogue_product_id', value);

  bool get isCombo => getField<bool>('is_combo')!;
  set isCombo(bool value) => setField<bool>('is_combo', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
