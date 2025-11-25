import '../database.dart';

class ShippingCostTable extends SupabaseTable<ShippingCostRow> {
  @override
  String get tableName => 'shipping_cost';

  @override
  ShippingCostRow createRow(Map<String, dynamic> data) => ShippingCostRow(data);
}

class ShippingCostRow extends SupabaseDataRow {
  ShippingCostRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShippingCostTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get stateName => getField<String>('state_name')!;
  set stateName(String value) => setField<String>('state_name', value);

  String? get tamilState => getField<String>('tamil_state');
  set tamilState(String? value) => setField<String>('tamil_state', value);

  double? get shippingCost => getField<double>('shipping_cost');
  set shippingCost(double? value) => setField<double>('shipping_cost', value);
}
