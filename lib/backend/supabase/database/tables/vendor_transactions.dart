import '../database.dart';

class VendorTransactionsTable extends SupabaseTable<VendorTransactionsRow> {
  @override
  String get tableName => 'vendor_transactions';

  @override
  VendorTransactionsRow createRow(Map<String, dynamic> data) =>
      VendorTransactionsRow(data);
}

class VendorTransactionsRow extends SupabaseDataRow {
  VendorTransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorTransactionsTable();

  int get transactionId => getField<int>('transaction_id')!;
  set transactionId(int value) => setField<int>('transaction_id', value);

  int get vendorId => getField<int>('vendor_id')!;
  set vendorId(int value) => setField<int>('vendor_id', value);

  int get purchaseId => getField<int>('purchase_id')!;
  set purchaseId(int value) => setField<int>('purchase_id', value);

  double get amountPaid => getField<double>('amount_paid')!;
  set amountPaid(double value) => setField<double>('amount_paid', value);

  double get balanceAmount => getField<double>('balance_amount')!;
  set balanceAmount(double value) => setField<double>('balance_amount', value);

  DateTime get transactionDate => getField<DateTime>('transaction_date')!;
  set transactionDate(DateTime value) =>
      setField<DateTime>('transaction_date', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);
}
