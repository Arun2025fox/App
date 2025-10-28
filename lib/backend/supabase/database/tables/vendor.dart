import '../database.dart';

class VendorTable extends SupabaseTable<VendorRow> {
  @override
  String get tableName => 'vendor';

  @override
  VendorRow createRow(Map<String, dynamic> data) => VendorRow(data);
}

class VendorRow extends SupabaseDataRow {
  VendorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorTable();

  int get vendorId => getField<int>('vendor_id')!;
  set vendorId(int value) => setField<int>('vendor_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get address => getField<String>('address')!;
  set address(String value) => setField<String>('address', value);

  String get contactNumber => getField<String>('contact_number')!;
  set contactNumber(String value) => setField<String>('contact_number', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get gst => getField<String>('gst');
  set gst(String? value) => setField<String>('gst', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get contactPerson => getField<String>('contact_person');
  set contactPerson(String? value) => setField<String>('contact_person', value);

  String? get paymentTerms => getField<String>('payment_terms');
  set paymentTerms(String? value) => setField<String>('payment_terms', value);

  String? get bankAccount => getField<String>('bank_account');
  set bankAccount(String? value) => setField<String>('bank_account', value);

  String? get ifsc => getField<String>('ifsc');
  set ifsc(String? value) => setField<String>('ifsc', value);

  String? get panNumber => getField<String>('pan_number');
  set panNumber(String? value) => setField<String>('pan_number', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
