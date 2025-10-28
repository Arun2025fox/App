import '../database.dart';

class PurchaseItemsTable extends SupabaseTable<PurchaseItemsRow> {
  @override
  String get tableName => 'purchase_items';

  @override
  PurchaseItemsRow createRow(Map<String, dynamic> data) =>
      PurchaseItemsRow(data);
}

class PurchaseItemsRow extends SupabaseDataRow {
  PurchaseItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PurchaseItemsTable();

  int get purchaseItemId => getField<int>('purchase_item_id')!;
  set purchaseItemId(int value) => setField<int>('purchase_item_id', value);

  int get purchaseId => getField<int>('purchase_id')!;
  set purchaseId(int value) => setField<int>('purchase_id', value);

  int get variantId => getField<int>('variant_id')!;
  set variantId(int value) => setField<int>('variant_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  double? get costPrice => getField<double>('cost_price');
  set costPrice(double? value) => setField<double>('cost_price', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
