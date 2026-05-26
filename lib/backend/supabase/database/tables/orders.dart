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

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get datatime => getField<DateTime>('datatime')!;
  set datatime(DateTime value) => setField<DateTime>('datatime', value);

  int? get courseNumber => getField<int>('courseNumber');
  set courseNumber(int? value) => setField<int>('courseNumber', value);

  double? get summa => getField<double>('summa');
  set summa(double? value) => setField<double>('summa', value);

  int? get numberOrder => getField<int>('numberOrder');
  set numberOrder(int? value) => setField<int>('numberOrder', value);

  String? get ukassaPaymentID => getField<String>('UkassaPaymentID');
  set ukassaPaymentID(String? value) =>
      setField<String>('UkassaPaymentID', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
