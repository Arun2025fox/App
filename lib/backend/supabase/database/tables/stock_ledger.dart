import '../database.dart';

class StockLedgerTable extends SupabaseTable<StockLedgerRow> {
  @override
  String get tableName => 'stock_ledger';

  @override
  StockLedgerRow createRow(Map<String, dynamic> data) => StockLedgerRow(data);
}

class StockLedgerRow extends SupabaseDataRow {
  StockLedgerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StockLedgerTable();

  int get ledgerId => getField<int>('ledger_id')!;
  set ledgerId(int value) => setField<int>('ledger_id', value);

  int get variantId => getField<int>('variant_id')!;
  set variantId(int value) => setField<int>('variant_id', value);

  String get changeType => getField<String>('change_type')!;
  set changeType(String value) => setField<String>('change_type', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  String get referenceType => getField<String>('reference_type')!;
  set referenceType(String value) => setField<String>('reference_type', value);

  String get referenceId => getField<String>('reference_id')!;
  set referenceId(String value) => setField<String>('reference_id', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
