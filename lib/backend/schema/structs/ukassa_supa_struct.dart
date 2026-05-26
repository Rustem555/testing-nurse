// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UkassaSupaStruct extends BaseStruct {
  UkassaSupaStruct({
    String? paymentId,
    int? value,
    String? token,
    String? userid,
  })  : _paymentId = paymentId,
        _value = value,
        _token = token,
        _userid = userid;

  // "payment_id" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  set paymentId(String? val) => _paymentId = val;

  bool hasPaymentId() => _paymentId != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;

  void incrementValue(int amount) => value = value + amount;

  bool hasValue() => _value != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  set userid(String? val) => _userid = val;

  bool hasUserid() => _userid != null;

  static UkassaSupaStruct fromMap(Map<String, dynamic> data) =>
      UkassaSupaStruct(
        paymentId: data['payment_id'] as String?,
        value: castToType<int>(data['value']),
        token: data['token'] as String?,
        userid: data['userid'] as String?,
      );

  static UkassaSupaStruct? maybeFromMap(dynamic data) => data is Map
      ? UkassaSupaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'payment_id': _paymentId,
        'value': _value,
        'token': _token,
        'userid': _userid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'payment_id': serializeParam(
          _paymentId,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.int,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'userid': serializeParam(
          _userid,
          ParamType.String,
        ),
      }.withoutNulls;

  static UkassaSupaStruct fromSerializableMap(Map<String, dynamic> data) =>
      UkassaSupaStruct(
        paymentId: deserializeParam(
          data['payment_id'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.int,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        userid: deserializeParam(
          data['userid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UkassaSupaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UkassaSupaStruct &&
        paymentId == other.paymentId &&
        value == other.value &&
        token == other.token &&
        userid == other.userid;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([paymentId, value, token, userid]);
}

UkassaSupaStruct createUkassaSupaStruct({
  String? paymentId,
  int? value,
  String? token,
  String? userid,
}) =>
    UkassaSupaStruct(
      paymentId: paymentId,
      value: value,
      token: token,
      userid: userid,
    );
