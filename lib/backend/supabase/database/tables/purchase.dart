import '../database.dart';

class PurchaseTable extends SupabaseTable<PurchaseRow> {
  @override
  String get tableName => 'purchase';

  @override
  PurchaseRow createRow(Map<String, dynamic> data) => PurchaseRow(data);
}

class PurchaseRow extends SupabaseDataRow {
  PurchaseRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PurchaseTable();

  int get purchaseId => getField<int>('purchase_id')!;
  set purchaseId(int value) => setField<int>('purchase_id', value);

  String get invoiceNo => getField<String>('invoice_no')!;
  set invoiceNo(String value) => setField<String>('invoice_no', value);

  DateTime get invoiceDate => getField<DateTime>('invoice_date')!;
  set invoiceDate(DateTime value) => setField<DateTime>('invoice_date', value);

  String? get invoiceImage => getField<String>('invoice_image');
  set invoiceImage(String? value) => setField<String>('invoice_image', value);

  DateTime? get purchaseDate => getField<DateTime>('purchase_date');
  set purchaseDate(DateTime? value) =>
      setField<DateTime>('purchase_date', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int get vendorId => getField<int>('vendor_id')!;
  set vendorId(int value) => setField<int>('vendor_id', value);
}
