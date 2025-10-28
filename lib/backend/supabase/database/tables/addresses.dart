import '../database.dart';

class AddressesTable extends SupabaseTable<AddressesRow> {
  @override
  String get tableName => 'addresses';

  @override
  AddressesRow createRow(Map<String, dynamic> data) => AddressesRow(data);
}

class AddressesRow extends SupabaseDataRow {
  AddressesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AddressesTable();

  int get addressId => getField<int>('address_id')!;
  set addressId(int value) => setField<int>('address_id', value);

  int get customerId => getField<int>('customer_id')!;
  set customerId(int value) => setField<int>('customer_id', value);

  String get fullName => getField<String>('full_name')!;
  set fullName(String value) => setField<String>('full_name', value);

  String get mobileNumber => getField<String>('mobile_number')!;
  set mobileNumber(String value) => setField<String>('mobile_number', value);

  String get pincode => getField<String>('pincode')!;
  set pincode(String value) => setField<String>('pincode', value);

  String get addressLine1 => getField<String>('address_line1')!;
  set addressLine1(String value) => setField<String>('address_line1', value);

  String? get addressLine2 => getField<String>('address_line2');
  set addressLine2(String? value) => setField<String>('address_line2', value);

  String? get landmark => getField<String>('landmark');
  set landmark(String? value) => setField<String>('landmark', value);

  String get city => getField<String>('city')!;
  set city(String value) => setField<String>('city', value);

  String get state => getField<String>('state')!;
  set state(String value) => setField<String>('state', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  bool? get isDefault => getField<bool>('is_default');
  set isDefault(bool? value) => setField<bool>('is_default', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
