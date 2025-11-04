import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GenerateCatalogueCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Generate Catalogue',
      apiUrl:
          'https://gvsorguincvinuiqtooo.supabase.co/functions/v1/generateCatalogue',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd2c29yZ3VpbmN2aW51aXF0b29vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MjY0ODgxOSwiZXhwIjoyMDY4MjI0ODE5fQ.9fuH7ZPslf9S875L2Q7YZxbvKoScQ-KTgIFQMOdOo9w',
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

  static String? nameslist(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.products[:].name''',
      ));
  static List<int>? pricelist(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].product_variants[:].saleprice''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? imagelist(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].product_variants[:].image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GenerateCatalogueFilterCall {
  static Future<ApiCallResponse> call({
    int? subcategoryId = 228,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Generate Catalogue Filter',
      apiUrl:
          'https://gvsorguincvinuiqtooo.supabase.co/functions/v1/generateCatalogue',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd2c29yZ3VpbmN2aW51aXF0b29vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MjY0ODgxOSwiZXhwIjoyMDY4MjI0ODE5fQ.9fuH7ZPslf9S875L2Q7YZxbvKoScQ-KTgIFQMOdOo9w',
      },
      params: {
        'subcategory_id': subcategoryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nameslist(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.products[:].name''',
      ));
  static List<int>? pricelist(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].product_variants[:].saleprice''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? imagelist(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].product_variants[:].image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetCategoriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCategories',
      apiUrl:
          'https://gvsorguincvinuiqtooo.supabase.co/functions/v1/getCategories',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd2c29yZ3VpbmN2aW51aXF0b29vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MjY0ODgxOSwiZXhwIjoyMDY4MjI0ODE5fQ.9fuH7ZPslf9S875L2Q7YZxbvKoScQ-KTgIFQMOdOo9w',
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

  static List<String>? cateList(dynamic response) => (getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

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
