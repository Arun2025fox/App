import '../database.dart';

class ComboItemsTable extends SupabaseTable<ComboItemsRow> {
  @override
  String get tableName => 'combo_items';

  @override
  ComboItemsRow createRow(Map<String, dynamic> data) => ComboItemsRow(data);
}

class ComboItemsRow extends SupabaseDataRow {
  ComboItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComboItemsTable();

  int get quantityPerCombo => getField<int>('quantity_per_combo')!;
  set quantityPerCombo(int value) => setField<int>('quantity_per_combo', value);

  double? get comboId => getField<double>('combo_id');
  set comboId(double? value) => setField<double>('combo_id', value);

  double get comboItemId => getField<double>('combo_item_id')!;
  set comboItemId(double value) => setField<double>('combo_item_id', value);

  int? get variantId => getField<int>('variant_id');
  set variantId(int? value) => setField<int>('variant_id', value);
}
