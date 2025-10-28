import '../database.dart';

class ReturnItemsTable extends SupabaseTable<ReturnItemsRow> {
  @override
  String get tableName => 'return_items';

  @override
  ReturnItemsRow createRow(Map<String, dynamic> data) => ReturnItemsRow(data);
}

class ReturnItemsRow extends SupabaseDataRow {
  ReturnItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReturnItemsTable();

  int get returnItemId => getField<int>('return_item_id')!;
  set returnItemId(int value) => setField<int>('return_item_id', value);

  int? get returnId => getField<int>('return_id');
  set returnId(int? value) => setField<int>('return_id', value);

  String? get orderItemId => getField<String>('order_item_id');
  set orderItemId(String? value) => setField<String>('order_item_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  double? get refundAmount => getField<double>('refund_amount');
  set refundAmount(double? value) => setField<double>('refund_amount', value);
}
