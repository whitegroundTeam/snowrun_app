import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/infrastructure/api/authenticated_http_client.dart';
import 'package:snowrun_app/infrastructure/auth/auth_dtos.dart';
import 'package:snowrun_app/infrastructure/error/error_response_dtos.dart';
import 'package:snowrun_app/infrastructure/place/place_dtos.dart';
import 'package:snowrun_app/infrastructure/riding/riding_dtos.dart';
import 'package:snowrun_app/infrastructure/user/user_dtos.dart';

enum HttpMethod {
  get,
  post,
  delete,
  put,
  patch;
}

@singleton
class CoreApi {
  static const defaultPageSize = 30;
  final _baseUrl = dotenv.env['BASE_URL'] ?? "";
  final Map<String, String> _baseHeaders = {
    "Content-Type": "application/json; charset=utf-8"
  };
  late Future<void> Function(String waitingToken) onErrorWaiting;
  late Future<void> Function() onApprovedWaiting;

  final AuthenticatedHttpClient client;

  CoreApi({required this.client});

  setOnErrorWaiting(
      Future<void> Function(String waitingToken) onErrorWaiting) async {
    this.onErrorWaiting = onErrorWaiting;
  }

  // color_dark: "#101012"
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
      Uri.https(_baseUrl, path, queryParams);

  /// Auth
  Future<Response> me() => _requestWrapper(
        method: HttpMethod.get,
        path: "/auth/users/me",
      );

  /// Account
  Future<Response> signWithIdToken(IdTokenRequestDto idTokenRequestDto) =>
      _requestWrapper(
        method: HttpMethod.post,
        path: "/account/sign/",
        bodyParam: idTokenRequestDto.toJson(),
      );

  Future<Response> updatePushToken(String token) async => _requestWrapper(
        method: HttpMethod.post,
        path: "/account/pushtoken/",
        bodyParam: {"token": token},
      );

  Future<Response> updateUserCurrentLocation(UserLocationDto userLocationDto) =>
      _requestWrapper(
        method: HttpMethod.post,
        path: "/account/update_location/",
        bodyParam: userLocationDto.toJson(),
      );

  Future<Response> updateProfileImage(
          UpdateProfileByTypeRequestDto updateProfileByTypeRequestDto) =>
      _requestWrapper(
        method: HttpMethod.post,
        path: "/account/profile-image-by-type/",
        bodyParam: updateProfileByTypeRequestDto.toJson(),
      );

  Future<Response> getSnowBallProfileImages() => _requestWrapper(
        method: HttpMethod.get,
        path: "/account/default-profile-images/",
      );

  /// Boundaries
  Future<Response> createBoundaries(CreateBoundaryDto createBoundaryDto) =>
      _requestWrapper(
        method: HttpMethod.post,
        path: "/boundaries/",
        bodyParam: createBoundaryDto.toJson(),
      );

  /// Riding
  Future<Response> getRidingRooms({int? limit, int? offset}) => _requestWrapper(
          method: HttpMethod.get,
          path: "/riding-room/",
          queryParams: {
            'limit': "$defaultPageSize",
            'offset': "0",
          });

  Future<Response> getRidingRoom(int ridingRoomId) => _requestWrapper(
        method: HttpMethod.get,
        path: "/riding-room/{room_id}/",
        pathParams: {'room_id': "$ridingRoomId"},
      );

  Future<Response> deleteRidingRoom(int roomId) => _requestWrapper(
      method: HttpMethod.delete,
      path: "/riding-room/{room_id}/",
      pathParams: {'room_id': '$roomId'});

  Future<Response> createRidingRoom() => _requestWrapper(
        method: HttpMethod.post,
        path: "/riding-room/",
      );

  Future<Response> updateRidingRoomName(int ridingRoomId,
          UpdateRidingRoomNameRequestDto updateRidingRoomNameRequestDto) =>
      _requestWrapper(
        method: HttpMethod.post,
        path: "/riding-room/{room_id}/update-name",
        pathParams: {'room_id': "$ridingRoomId"},
        bodyParam: updateRidingRoomNameRequestDto.toJson(),
      );

  Future<Response> exitRidingRoom(int ridingRoomId) => _requestWrapper(
        method: HttpMethod.post,
        path: "/riding-room/{room_id}/out",
        pathParams: {'room_id': "$ridingRoomId"},
      );

  Future<Response> joinRidingRoom(int ridingRoomId) => _requestWrapper(
        method: HttpMethod.post,
        path: "/riding-room/{room_id}/join",
        pathParams: {'room_id': "$ridingRoomId"},
      );
}
