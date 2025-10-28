import '../database.dart';

class CustomersTable extends SupabaseTable<CustomersRow> {
  @override
  String get tableName => 'customers';

  @override
  CustomersRow createRow(Map<String, dynamic> data) => CustomersRow(data);
}

class CustomersRow extends SupabaseDataRow {
  CustomersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomersTable();

  int get customerId => getField<int>('customer_id')!;
  set customerId(int value) => setField<int>('customer_id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String get mobileNumber => getField<String>('mobile_number')!;
  set mobileNumber(String value) => setField<String>('mobile_number', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get pincode => getField<String>('pincode');
  set pincode(String? value) => setField<String>('pincode', value);

  String? get authId => getField<String>('auth_id');
  set authId(String? value) => setField<String>('auth_id', value);
}
