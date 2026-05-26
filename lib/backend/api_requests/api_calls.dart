import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Edge Functions Group Code

class SupabaseEdgeFunctionsGroup {
  static String getBaseUrl() =>
      'https://qorcfqvlruqfkwssbwou.supabase.co/functions/v1/';
  static Map<String, String> headers = {};
  static DeleteUserCall deleteUserCall = DeleteUserCall();
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SupabaseEdgeFunctionsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete User',
      apiUrl: '${baseUrl}delete-user',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Supabase Edge Functions Group Code

/// Start UKASSA Group Code

class UkassaGroup {
  static String getBaseUrl() => 'https://api.yookassa.ru/v3';
  static Map<String, String> headers = {
    'Authorization':
        'Basic {{UKASSA_API_KEY}}',
  };
  static CreatePayCall createPayCall = CreatePayCall();
  static CheckPayCall checkPayCall = CheckPayCall();
}

class CreatePayCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? orderId = '',
  }) async {
    final baseUrl = UkassaGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "amount": {
    "value": ${amount},
    "currency": "RUB"
  },
  "confirmation": {
    "type": "redirect",
    "return_url": "https://your-site.com/return-url"
  },
  "capture": true,
  "description": "${orderId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createPay',
      apiUrl: '${baseUrl}/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic {{UKASSA_API_KEY}}',
        'Idempotence-Key': '${orderId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? apiID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  bool? paidQ(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.paid''',
      ));
}

class CheckPayCall {
  Future<ApiCallResponse> call({
    String? paymentId = '',
  }) async {
    final baseUrl = UkassaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'checkPay',
      apiUrl: '${baseUrl}/payments/${paymentId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic {{UKASSA_API_KEY}}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? paidOrNot(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.paid''',
      ));
}

/// End UKASSA Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
