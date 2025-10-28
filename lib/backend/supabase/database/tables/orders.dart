import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersTable();

  String get orderId => getField<String>('order_id')!;
  set orderId(String value) => setField<String>('order_id', value);

  int? get customerId => getField<int>('customer_id');
  set customerId(int? value) => setField<int>('customer_id', value);

  String? get orderStatus => getField<String>('order_status');
  set orderStatus(String? value) => setField<String>('order_status', value);

  double? get totalAmount => getField<double>('total_amount');
  set totalAmount(double? value) => setField<double>('total_amount', value);

  double? get shippingAmount => getField<double>('shipping_amount');
  set shippingAmount(double? value) =>
      setField<double>('shipping_amount', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);

  String? get orderNote => getField<String>('order_note');
  set orderNote(String? value) => setField<String>('order_note', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get paymentTransactionId =>
      getField<String>('payment_transaction_id');
  set paymentTransactionId(String? value) =>
      setField<String>('payment_transaction_id', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get invoiceUrl => getField<String>('invoice_url');
  set invoiceUrl(String? value) => setField<String>('invoice_url', value);

  String? get shippingAddress => getField<String>('shipping_address');
  set shippingAddress(String? value) =>
      setField<String>('shipping_address', value);

  String? get shippingState => getField<String>('shipping_state');
  set shippingState(String? value) => setField<String>('shipping_state', value);

  String? get shippingPincode => getField<String>('shipping_pincode');
  set shippingPincode(String? value) =>
      setField<String>('shipping_pincode', value);

  double? get contactNumber => getField<double>('contact_number');
  set contactNumber(double? value) => setField<double>('contact_number', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
