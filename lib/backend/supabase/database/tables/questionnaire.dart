import '../database.dart';

class QuestionnaireTable extends SupabaseTable<QuestionnaireRow> {
  @override
  String get tableName => 'questionnaire';

  @override
  QuestionnaireRow createRow(Map<String, dynamic> data) =>
      QuestionnaireRow(data);
}

class QuestionnaireRow extends SupabaseDataRow {
  QuestionnaireRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => QuestionnaireTable();

  String? get subject => getField<String>('subject');
  set subject(String? value) => setField<String>('subject', value);

  int? get number => getField<int>('number');
  set number(int? value) => setField<int>('number', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);

  String? get aa => getField<String>('aa');
  set aa(String? value) => setField<String>('aa', value);

  String? get bb => getField<String>('bb');
  set bb(String? value) => setField<String>('bb', value);

  String? get cc => getField<String>('cc');
  set cc(String? value) => setField<String>('cc', value);

  String? get dd => getField<String>('dd');
  set dd(String? value) => setField<String>('dd', value);

  int? get answer => getField<int>('answer');
  set answer(int? value) => setField<int>('answer', value);

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);
}
