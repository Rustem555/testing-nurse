import '../database.dart';

class GlobalTable extends SupabaseTable<GlobalRow> {
  @override
  String get tableName => 'global';

  @override
  GlobalRow createRow(Map<String, dynamic> data) => GlobalRow(data);
}

class GlobalRow extends SupabaseDataRow {
  GlobalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GlobalTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  bool get condition => getField<bool>('condition')!;
  set condition(bool value) => setField<bool>('condition', value);

  int get orderNumber => getField<int>('orderNumber')!;
  set orderNumber(int value) => setField<int>('orderNumber', value);

  double get price => getField<double>('price')!;
  set price(double value) => setField<double>('price', value);

  String? get promokod => getField<String>('promokod');
  set promokod(String? value) => setField<String>('promokod', value);

  int? get countPromo => getField<int>('countPromo');
  set countPromo(int? value) => setField<int>('countPromo', value);

  String? get adminEmail => getField<String>('adminEmail');
  set adminEmail(String? value) => setField<String>('adminEmail', value);

  int? get numberOfFreeTests => getField<int>('numberOfFreeTests');
  set numberOfFreeTests(int? value) =>
      setField<int>('numberOfFreeTests', value);

  int? get durationOfAccess => getField<int>('durationOfAccess');
  set durationOfAccess(int? value) => setField<int>('durationOfAccess', value);
}
