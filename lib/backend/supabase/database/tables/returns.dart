import '../database.dart';

class ReturnsTable extends SupabaseTable<ReturnsRow> {
  @override
  String get tableName => 'returns';

  @override
  ReturnsRow createRow(Map<String, dynamic> data) => ReturnsRow(data);
}

class ReturnsRow extends SupabaseDataRow {
  ReturnsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReturnsTable();

  int get returnId => getField<int>('return_id')!;
  set returnId(int value) => setField<int>('return_id', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  DateTime? get returnDate => getField<DateTime>('return_date');
  set returnDate(DateTime? value) => setField<DateTime>('return_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get reason => getField<String>('reason');
  set reason(String? value) => setField<String>('reason', value);

  double? get refundAmount => getField<double>('refund_amount');
  set refundAmount(double? value) => setField<double>('refund_amount', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
