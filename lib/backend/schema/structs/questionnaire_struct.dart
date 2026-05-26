// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionnaireStruct extends BaseStruct {
  QuestionnaireStruct({
    String? uuid,
    String? subject,
    int? number,
    String? question,
    String? aa,
    String? bb,
    String? cc,
    String? dd,
    int? answer,
  })  : _uuid = uuid,
        _subject = subject,
        _number = number,
        _question = question,
        _aa = aa,
        _bb = bb,
        _cc = cc,
        _dd = dd,
        _answer = answer;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  set subject(String? val) => _subject = val;

  bool hasSubject() => _subject != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "aa" field.
  String? _aa;
  String get aa => _aa ?? '';
  set aa(String? val) => _aa = val;

  bool hasAa() => _aa != null;

  // "bb" field.
  String? _bb;
  String get bb => _bb ?? '';
  set bb(String? val) => _bb = val;

  bool hasBb() => _bb != null;

  // "cc" field.
  String? _cc;
  String get cc => _cc ?? '';
  set cc(String? val) => _cc = val;

  bool hasCc() => _cc != null;

  // "dd" field.
  String? _dd;
  String get dd => _dd ?? '';
  set dd(String? val) => _dd = val;

  bool hasDd() => _dd != null;

  // "answer" field.
  int? _answer;
  int get answer => _answer ?? 0;
  set answer(int? val) => _answer = val;

  void incrementAnswer(int amount) => answer = answer + amount;

  bool hasAnswer() => _answer != null;

  static QuestionnaireStruct fromMap(Map<String, dynamic> data) =>
      QuestionnaireStruct(
        uuid: data['uuid'] as String?,
        subject: data['subject'] as String?,
        number: castToType<int>(data['number']),
        question: data['question'] as String?,
        aa: data['aa'] as String?,
        bb: data['bb'] as String?,
        cc: data['cc'] as String?,
        dd: data['dd'] as String?,
        answer: castToType<int>(data['answer']),
      );

  static QuestionnaireStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestionnaireStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'uuid': _uuid,
        'subject': _subject,
        'number': _number,
        'question': _question,
        'aa': _aa,
        'bb': _bb,
        'cc': _cc,
        'dd': _dd,
        'answer': _answer,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'subject': serializeParam(
          _subject,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'aa': serializeParam(
          _aa,
          ParamType.String,
        ),
        'bb': serializeParam(
          _bb,
          ParamType.String,
        ),
        'cc': serializeParam(
          _cc,
          ParamType.String,
        ),
        'dd': serializeParam(
          _dd,
          ParamType.String,
        ),
        'answer': serializeParam(
          _answer,
          ParamType.int,
        ),
      }.withoutNulls;

  static QuestionnaireStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionnaireStruct(
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        subject: deserializeParam(
          data['subject'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        aa: deserializeParam(
          data['aa'],
          ParamType.String,
          false,
        ),
        bb: deserializeParam(
          data['bb'],
          ParamType.String,
          false,
        ),
        cc: deserializeParam(
          data['cc'],
          ParamType.String,
          false,
        ),
        dd: deserializeParam(
          data['dd'],
          ParamType.String,
          false,
        ),
        answer: deserializeParam(
          data['answer'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'QuestionnaireStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionnaireStruct &&
        uuid == other.uuid &&
        subject == other.subject &&
        number == other.number &&
        question == other.question &&
        aa == other.aa &&
        bb == other.bb &&
        cc == other.cc &&
        dd == other.dd &&
        answer == other.answer;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([uuid, subject, number, question, aa, bb, cc, dd, answer]);
}

QuestionnaireStruct createQuestionnaireStruct({
  String? uuid,
  String? subject,
  int? number,
  String? question,
  String? aa,
  String? bb,
  String? cc,
  String? dd,
  int? answer,
}) =>
    QuestionnaireStruct(
      uuid: uuid,
      subject: subject,
      number: number,
      question: question,
      aa: aa,
      bb: bb,
      cc: cc,
      dd: dd,
      answer: answer,
    );
