import '../database.dart';

class ShipmentTrackingTable extends SupabaseTable<ShipmentTrackingRow> {
  @override
  String get tableName => 'shipment_tracking';

  @override
  ShipmentTrackingRow createRow(Map<String, dynamic> data) =>
      ShipmentTrackingRow(data);
}

class ShipmentTrackingRow extends SupabaseDataRow {
  ShipmentTrackingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShipmentTrackingTable();

  String get shipmentId => getField<String>('shipment_id')!;
  set shipmentId(String value) => setField<String>('shipment_id', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  String? get trackingNumber => getField<String>('tracking_number');
  set trackingNumber(String? value) =>
      setField<String>('tracking_number', value);

  String? get shippingProvider => getField<String>('shipping_provider');
  set shippingProvider(String? value) =>
      setField<String>('shipping_provider', value);

  String? get trackingUrl => getField<String>('tracking_url');
  set trackingUrl(String? value) => setField<String>('tracking_url', value);

  String? get shippingStatus => getField<String>('shipping_status');
  set shippingStatus(String? value) =>
      setField<String>('shipping_status', value);

  DateTime? get shippedDate => getField<DateTime>('shipped_date');
  set shippedDate(DateTime? value) => setField<DateTime>('shipped_date', value);

  DateTime? get deliveredDate => getField<DateTime>('delivered_date');
  set deliveredDate(DateTime? value) =>
      setField<DateTime>('delivered_date', value);

  String? get remarks => getField<String>('remarks');
  set remarks(String? value) => setField<String>('remarks', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
