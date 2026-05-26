import '../database.dart';

class SubjectTable extends SupabaseTable<SubjectRow> {
  @override
  String get tableName => 'subject';

  @override
  SubjectRow createRow(Map<String, dynamic> data) => SubjectRow(data);
}

class SubjectRow extends SupabaseDataRow {
  SubjectRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubjectTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nameSubject => getField<String>('nameSubject');
  set nameSubject(String? value) => setField<String>('nameSubject', value);

  int? get numberOfQuestions => getField<int>('numberOfQuestions');
  set numberOfQuestions(int? value) =>
      setField<int>('numberOfQuestions', value);

  int? get numberOfQuestions2 => getField<int>('numberOfQuestions2');
  set numberOfQuestions2(int? value) =>
      setField<int>('numberOfQuestions2', value);

  int? get demo => getField<int>('demo');
  set demo(int? value) => setField<int>('demo', value);
}
