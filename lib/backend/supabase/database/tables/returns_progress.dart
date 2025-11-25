import '../database.dart';

class ReturnsProgressTable extends SupabaseTable<ReturnsProgressRow> {
  @override
  String get tableName => 'returns_progress';

  @override
  ReturnsProgressRow createRow(Map<String, dynamic> data) =>
      ReturnsProgressRow(data);
}

class ReturnsProgressRow extends SupabaseDataRow {
  ReturnsProgressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReturnsProgressTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get returnId => getField<int>('return_id')!;
  set returnId(int value) => setField<int>('return_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
