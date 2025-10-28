import '../database.dart';

class LogsTable extends SupabaseTable<LogsRow> {
  @override
  String get tableName => 'logs';

  @override
  LogsRow createRow(Map<String, dynamic> data) => LogsRow(data);
}

class LogsRow extends SupabaseDataRow {
  LogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get provider => getField<String>('provider')!;
  set provider(String value) => setField<String>('provider', value);

  String get action => getField<String>('action')!;
  set action(String value) => setField<String>('action', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);

  String? get level => getField<String>('level');
  set level(String? value) => setField<String>('level', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
