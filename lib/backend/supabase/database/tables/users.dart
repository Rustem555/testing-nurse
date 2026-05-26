import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get displayName => getField<String>('display_name')!;
  set displayName(String value) => setField<String>('display_name', value);

  DateTime? get terminationOfAccess =>
      getField<DateTime>('terminationOfAccess');
  set terminationOfAccess(DateTime? value) =>
      setField<DateTime>('terminationOfAccess', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  int? get paid => getField<int>('paid');
  set paid(int? value) => setField<int>('paid', value);

  int? get numberOfQuestions => getField<int>('numberOfQuestions');
  set numberOfQuestions(int? value) =>
      setField<int>('numberOfQuestions', value);
}
