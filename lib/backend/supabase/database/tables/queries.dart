import '../database.dart';

class QueriesTable extends SupabaseTable<QueriesRow> {
  @override
  String get tableName => 'queries';

  @override
  QueriesRow createRow(Map<String, dynamic> data) => QueriesRow(data);
}

class QueriesRow extends SupabaseDataRow {
  QueriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => QueriesTable();

  int get queryId => getField<int>('query_id')!;
  set queryId(int value) => setField<int>('query_id', value);

  int? get customerId => getField<int>('customer_id');
  set customerId(int? value) => setField<int>('customer_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String get mobileNumber => getField<String>('mobile_number')!;
  set mobileNumber(String value) => setField<String>('mobile_number', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String get message => getField<String>('message')!;
  set message(String value) => setField<String>('message', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get priority => getField<String>('priority');
  set priority(String? value) => setField<String>('priority', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);
}
