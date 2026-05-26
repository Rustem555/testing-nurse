import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _numberQuestion = prefs.getInt('ff_numberQuestion') ?? _numberQuestion;
    });
    _safeInit(() {
      _errorQuantity = prefs
              .getStringList('ff_errorQuantity')
              ?.map((x) {
                try {
                  return AnamnezStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _errorQuantity;
    });
    _safeInit(() {
      _UkassaID = prefs.getString('ff_UkassaID') ?? _UkassaID;
    });
    _safeInit(() {
      _courseNumber = prefs.getInt('ff_courseNumber') ?? _courseNumber;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ikassaSupa')) {
        try {
          final serializedData = prefs.getString('ff_ikassaSupa') ?? '{}';
          _ikassaSupa =
              UkassaSupaStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_Userdata')) {
        try {
          final serializedData = prefs.getString('ff_Userdata') ?? '{}';
          _Userdata =
              UserDataStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _numberOfFreeTests =
          prefs.getInt('ff_numberOfFreeTests') ?? _numberOfFreeTests;
    });
    _safeInit(() {
      _status = prefs.getInt('ff_status') ?? _status;
    });
    _safeInit(() {
      _quantityOfFreeTests =
          prefs.getInt('ff_quantityOfFreeTests') ?? _quantityOfFreeTests;
    });
    _safeInit(() {
      _terminationOfAccess = prefs.containsKey('ff_terminationOfAccess')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_terminationOfAccess')!)
          : _terminationOfAccess;
    });
    _safeInit(() {
      _durationOfAccess =
          prefs.getInt('ff_durationOfAccess') ?? _durationOfAccess;
    });
    _safeInit(() {
      _questionnaire = prefs
              .getStringList('ff_questionnaire')
              ?.map((x) {
                try {
                  return QuestionnaireStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _questionnaire;
    });
    _safeInit(() {
      _codLimit = prefs.getBool('ff_codLimit') ?? _codLimit;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _numberQuestion = 0;
  int get numberQuestion => _numberQuestion;
  set numberQuestion(int value) {
    _numberQuestion = value;
    prefs.setInt('ff_numberQuestion', value);
  }

  int _currentAnswer = 0;
  int get currentAnswer => _currentAnswer;
  set currentAnswer(int value) {
    _currentAnswer = value;
  }

  List<AnamnezStruct> _errorQuantity = [];
  List<AnamnezStruct> get errorQuantity => _errorQuantity;
  set errorQuantity(List<AnamnezStruct> value) {
    _errorQuantity = value;
    prefs.setStringList(
        'ff_errorQuantity', value.map((x) => x.serialize()).toList());
  }

  void addToErrorQuantity(AnamnezStruct value) {
    errorQuantity.add(value);
    prefs.setStringList(
        'ff_errorQuantity', _errorQuantity.map((x) => x.serialize()).toList());
  }

  void removeFromErrorQuantity(AnamnezStruct value) {
    errorQuantity.remove(value);
    prefs.setStringList(
        'ff_errorQuantity', _errorQuantity.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromErrorQuantity(int index) {
    errorQuantity.removeAt(index);
    prefs.setStringList(
        'ff_errorQuantity', _errorQuantity.map((x) => x.serialize()).toList());
  }

  void updateErrorQuantityAtIndex(
    int index,
    AnamnezStruct Function(AnamnezStruct) updateFn,
  ) {
    errorQuantity[index] = updateFn(_errorQuantity[index]);
    prefs.setStringList(
        'ff_errorQuantity', _errorQuantity.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInErrorQuantity(int index, AnamnezStruct value) {
    errorQuantity.insert(index, value);
    prefs.setStringList(
        'ff_errorQuantity', _errorQuantity.map((x) => x.serialize()).toList());
  }

  int _error1 = 0;
  int get error1 => _error1;
  set error1(int value) {
    _error1 = value;
  }

  int _limit = 0;
  int get limit => _limit;
  set limit(int value) {
    _limit = value;
  }

  double _dolya = 0.0;
  double get dolya => _dolya;
  set dolya(double value) {
    _dolya = value;
  }

  bool _errorBool = false;
  bool get errorBool => _errorBool;
  set errorBool(bool value) {
    _errorBool = value;
  }

  String _UkassaID = '';
  String get UkassaID => _UkassaID;
  set UkassaID(String value) {
    _UkassaID = value;
    prefs.setString('ff_UkassaID', value);
  }

  int _currentOrderN = 0;
  int get currentOrderN => _currentOrderN;
  set currentOrderN(int value) {
    _currentOrderN = value;
  }

  String _returnUrl = '';
  String get returnUrl => _returnUrl;
  set returnUrl(String value) {
    _returnUrl = value;
  }

  int _courseNumber = 0;
  int get courseNumber => _courseNumber;
  set courseNumber(int value) {
    _courseNumber = value;
    prefs.setInt('ff_courseNumber', value);
  }

  String _orderRef = '';
  String get orderRef => _orderRef;
  set orderRef(String value) {
    _orderRef = value;
  }

  UkassaSupaStruct _ikassaSupa = UkassaSupaStruct();
  UkassaSupaStruct get ikassaSupa => _ikassaSupa;
  set ikassaSupa(UkassaSupaStruct value) {
    _ikassaSupa = value;
    prefs.setString('ff_ikassaSupa', value.serialize());
  }

  void updateIkassaSupaStruct(Function(UkassaSupaStruct) updateFn) {
    updateFn(_ikassaSupa);
    prefs.setString('ff_ikassaSupa', _ikassaSupa.serialize());
  }

  UserDataStruct _Userdata = UserDataStruct();
  UserDataStruct get Userdata => _Userdata;
  set Userdata(UserDataStruct value) {
    _Userdata = value;
    prefs.setString('ff_Userdata', value.serialize());
  }

  void updateUserdataStruct(Function(UserDataStruct) updateFn) {
    updateFn(_Userdata);
    prefs.setString('ff_Userdata', _Userdata.serialize());
  }

  String _tema = '';
  String get tema => _tema;
  set tema(String value) {
    _tema = value;
  }

  bool _admin = false;
  bool get admin => _admin;
  set admin(bool value) {
    _admin = value;
  }

  int _numberOfFreeTests = 0;
  int get numberOfFreeTests => _numberOfFreeTests;
  set numberOfFreeTests(int value) {
    _numberOfFreeTests = value;
    prefs.setInt('ff_numberOfFreeTests', value);
  }

  int _status = 0;
  int get status => _status;
  set status(int value) {
    _status = value;
    prefs.setInt('ff_status', value);
  }

  int _quantityOfFreeTests = 0;
  int get quantityOfFreeTests => _quantityOfFreeTests;
  set quantityOfFreeTests(int value) {
    _quantityOfFreeTests = value;
    prefs.setInt('ff_quantityOfFreeTests', value);
  }

  DateTime? _terminationOfAccess;
  DateTime? get terminationOfAccess => _terminationOfAccess;
  set terminationOfAccess(DateTime? value) {
    _terminationOfAccess = value;
    value != null
        ? prefs.setInt('ff_terminationOfAccess', value.millisecondsSinceEpoch)
        : prefs.remove('ff_terminationOfAccess');
  }

  int _durationOfAccess = 0;
  int get durationOfAccess => _durationOfAccess;
  set durationOfAccess(int value) {
    _durationOfAccess = value;
    prefs.setInt('ff_durationOfAccess', value);
  }

  List<QuestionnaireStruct> _questionnaire = [];
  List<QuestionnaireStruct> get questionnaire => _questionnaire;
  set questionnaire(List<QuestionnaireStruct> value) {
    _questionnaire = value;
    prefs.setStringList(
        'ff_questionnaire', value.map((x) => x.serialize()).toList());
  }

  void addToQuestionnaire(QuestionnaireStruct value) {
    questionnaire.add(value);
    prefs.setStringList(
        'ff_questionnaire', _questionnaire.map((x) => x.serialize()).toList());
  }

  void removeFromQuestionnaire(QuestionnaireStruct value) {
    questionnaire.remove(value);
    prefs.setStringList(
        'ff_questionnaire', _questionnaire.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromQuestionnaire(int index) {
    questionnaire.removeAt(index);
    prefs.setStringList(
        'ff_questionnaire', _questionnaire.map((x) => x.serialize()).toList());
  }

  void updateQuestionnaireAtIndex(
    int index,
    QuestionnaireStruct Function(QuestionnaireStruct) updateFn,
  ) {
    questionnaire[index] = updateFn(_questionnaire[index]);
    prefs.setStringList(
        'ff_questionnaire', _questionnaire.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInQuestionnaire(int index, QuestionnaireStruct value) {
    questionnaire.insert(index, value);
    prefs.setStringList(
        'ff_questionnaire', _questionnaire.map((x) => x.serialize()).toList());
  }

  int _nnn = 0;
  int get nnn => _nnn;
  set nnn(int value) {
    _nnn = value;
  }

  int _nnn1 = 0;
  int get nnn1 => _nnn1;
  set nnn1(int value) {
    _nnn1 = value;
  }

  String _apiID = 'IUgyuftutfftu';
  String get apiID => _apiID;
  set apiID(String value) {
    _apiID = value;
  }

  bool _codLimit = true;
  bool get codLimit => _codLimit;
  set codLimit(bool value) {
    _codLimit = value;
    prefs.setBool('ff_codLimit', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
