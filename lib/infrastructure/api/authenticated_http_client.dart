// Dart imports:
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';

@LazySingleton()
class AuthenticatedHttpClient extends http.BaseClient {
  final HiveProvider hiveProvider;
  AuthenticatedHttpClient({required this.hiveProvider});

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final accessToken = await hiveProvider.getAuthToken();
    if (accessToken.isNotEmpty) {
      request.headers
          .putIfAbsent('Authorization', () => 'Token $accessToken');
    }

    debugPrint("\t\x1B[36m[HEADER]: ${request.headers.toString()}\x1B[0m\n");
    return request.send();
  }

  void printRequestDebug(String type, Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    var result = "\n\t[API-REQUEST] \n"
        "\t[URI]: $type $url\n";

    result += "\t[body]: $body\n";

    if (encoding != null) {
      result += "\t[encoding]:$encoding\n";
    }
    result = result.trimRight();
    result = "\x1B[36m$result\x1B[0m";

    debugPrint(result);
  }

  void printDebugResponse(String type, Response response,
      {bool pretty = false}) {
    var result = "\n\t[API-RESPONSE]  [status]: ${response.statusCode}\n";

    if (response.request?.url != null) {
      result += '\t[URI]: $type ${response.request?.url}\n';
    }

    if (response.bodyBytes.isEmpty) {
      result += '\t[body]: ${null}\n';
    } else {
      result += '\t[body]: ${utf8.decode(response.bodyBytes)}\n';
    }

    if (response.statusCode.toString().startsWith("2")) {
      result = "\x1B[32m$result\x1B[0m";
    } else {
      result = "\x1B[31m$result\x1B[0m";
    }
    debugPrint(result);
  }

  _interceptResponse(Response response) async {
    if(response.statusCode == 401) {
      await hiveProvider.deleteAuthToken();
    }
  }

  @override
  Future<String> read(Uri url, {Map<String, String>? headers}) {
    printRequestDebug('READ', url, headers: headers);
    final response = super.read(url, headers: headers);
    return response;
  }

  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) async {
    printRequestDebug('GET', url, headers: headers);
    final response = await super.get(url, headers: headers);
    _interceptResponse(response);
    printDebugResponse('GET', response);

    return response;
  }

  @override
  Future<Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    printRequestDebug('POST', url,
        headers: headers, body: body, encoding: encoding);
    final response =
    await super.post(url, headers: headers, body: body, encoding: encoding);
    _interceptResponse(response);
    printDebugResponse('POST', response);
    return response;
  }

  @override
  Future<Response> put(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    printRequestDebug('PUT', url,
        headers: headers, body: body, encoding: encoding);
    final response =
    await super.put(url, headers: headers, body: body, encoding: encoding);
    _interceptResponse(response);
    printDebugResponse('PUT', response);
    return response;
  }

  @override
  Future<Response> patch(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    printRequestDebug('PATCH', url,
        headers: headers, body: body, encoding: encoding);
    final response = await super
        .patch(url, headers: headers, body: body, encoding: encoding);
    _interceptResponse(response);
    printDebugResponse('PATCH', response);
    return response;
  }

  @override
  Future<Response> delete(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    printRequestDebug('DELETE', url,
        headers: headers, body: body, encoding: encoding);

    final response = await super
        .delete(url, headers: headers, body: body, encoding: encoding);
    _interceptResponse(response);
    printDebugResponse('DELETE', response);
    return response;
  }
}