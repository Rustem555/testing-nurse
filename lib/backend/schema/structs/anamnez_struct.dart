// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnamnezStruct extends BaseStruct {
  AnamnezStruct({
    DateTime? data,
    int? errorQ,
    String? tema,
  })  : _data = data,
        _errorQ = errorQ,
        _tema = tema;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  // "errorQ" field.
  int? _errorQ;
  int get errorQ => _errorQ ?? 0;
  set errorQ(int? val) => _errorQ = val;

  void incrementErrorQ(int amount) => errorQ = errorQ + amount;

  bool hasErrorQ() => _errorQ != null;

  // "tema" field.
  String? _tema;
  String get tema => _tema ?? '';
  set tema(String? val) => _tema = val;

  bool hasTema() => _tema != null;

  static AnamnezStruct fromMap(Map<String, dynamic> data) => AnamnezStruct(
        data: data['data'] as DateTime?,
        errorQ: castToType<int>(data['errorQ']),
        tema: data['tema'] as String?,
      );

  static AnamnezStruct? maybeFromMap(dynamic data) =>
      data is Map ? AnamnezStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'data': _data,
        'errorQ': _errorQ,
        'tema': _tema,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'errorQ': serializeParam(
          _errorQ,
          ParamType.int,
        ),
        'tema': serializeParam(
          _tema,
          ParamType.String,
        ),
      }.withoutNulls;

  static AnamnezStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnamnezStruct(
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        errorQ: deserializeParam(
          data['errorQ'],
          ParamType.int,
          false,
        ),
        tema: deserializeParam(
          data['tema'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AnamnezStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnamnezStruct &&
        data == other.data &&
        errorQ == other.errorQ &&
        tema == other.tema;
  }

  @override
  int get hashCode => const ListEquality().hash([data, errorQ, tema]);
}

AnamnezStruct createAnamnezStruct({
  DateTime? data,
  int? errorQ,
  String? tema,
}) =>
    AnamnezStruct(
      data: data,
      errorQ: errorQ,
      tema: tema,
    );
