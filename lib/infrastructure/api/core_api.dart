import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/infrastructure/api/authenticated_http_client.dart';
import 'package:snowrun_app/infrastructure/error/error_response_dtos.dart';
import 'package:snowrun_app/infrastructure/place/place_dtos.dart';

enum HttpMethod {
  get,
  post,
  delete,
  put,
  patch;
}

@singleton
class CoreApi {
  static const defaultPageSize = 10;
  String baseUrl = "api.whiteground.app";
  String basePath = "/api";
  final Map<String, String> _baseHeaders = {
    "Content-Type": "application/json; charset=utf-8"
  };
  late Future<void> Function(String waitingToken) onErrorWaiting;
  late Future<void> Function() onApprovedWaiting;

  final AuthenticatedHttpClient client;

  CoreApi({required this.client});

  setBaseUrl({required String baseUrl, String? path}) {
    debugPrint("FLUTTER_CORE :: setBaseUrl :: $baseUrl  //  $path");
    this.baseUrl = baseUrl;
    basePath = path ?? "";
  }

  setOnErrorWaiting(
      Future<void> Function(String waitingToken) onErrorWaiting) async {
    this.onErrorWaiting = onErrorWaiting;
  }

  setOnApprovedWaiting(Future<void> Function() onApprovedWaiting) async {
    this.onApprovedWaiting = onApprovedWaiting;
  }

  /// access token 만료를 공통으로 처리하기 위해 만든 함수 *
  Future<Response> _requestWrapper(
      {required HttpMethod method,
        required String path,
        Map<String, dynamic>? bodyParam,
        Map<String, dynamic>? pathParams,
        Map<String, dynamic>? queryParams}) async {
    return _request(
        method: method,
        path: path,
        bodyParam: bodyParam,
        pathParams: pathParams,
        queryParams: queryParams)
        .then((response) async {
      if (response.statusCode == 200) {
        return response;
      }

      final infoJson =
      json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      final errorResponse = AppErrorDto.fromJson(infoJson).toDomain();

      return response;
    });
  }

  Future<Response> _request(
      {required HttpMethod method,
        required String path,
        Map<String, dynamic>? bodyParam,
        Map<String, dynamic>? pathParams,
        Map<String, dynamic>? queryParams}) async {
    //body
    final body = json.encode(bodyParam);

    //path
    var realPath = "/api$path";
    pathParams?.forEach((key, value) {
      realPath = realPath.replaceFirst("{$key}", "$value");
    });

    debugPrint("CORE :: CORE_API :: request -> $realPath // $queryParams");

    //request
    final uri = _getUri(realPath, queryParams);

    Response response;
    switch (method) {
      case HttpMethod.post:
        response = await client.post(
          uri,
          headers: _baseHeaders,
          body: body,
        );
        break;
      case HttpMethod.delete:
        response = await client.delete(
          uri,
          headers: _baseHeaders,
          body: body,
        );
        break;
      case HttpMethod.patch:
        response = await client.patch(
          uri,
          headers: _baseHeaders,
          body: body,
        );
        break;
      case HttpMethod.put:
        response = await client.put(
          uri,
          headers: _baseHeaders,
          body: body,
        );
        break;
      default:
        response = await client.get(
          uri,
          headers: _baseHeaders,
        );
        break;
    }

    return response;
  }

  Uri _getUri(String path, Map<String, dynamic>? queryParams) =>
      Uri.https(baseUrl, path, queryParams);

  Future<Response> createBoundaries(CreateBoundaryDto createBoundaryDto) =>
      _requestWrapper(
        method: HttpMethod.post,
        path: "/boundaries/",
        bodyParam: createBoundaryDto.toJson(),
      );
}