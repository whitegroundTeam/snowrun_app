import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:snowrun_app/presentation/home/base_api.dart';

class AuthAPI extends BaseApi {
  Future<http.Response> signUp(String name, String password) async {
    var body = jsonEncode({
      'customer': {
        'name': name,
        // 'email': email,
        // 'phone': phone,
        'password': password,
        // 'password_confirmation': passwordConfirmation
      }
    });

    http.Response response =
    await http.post(super.customersPath as Uri, headers: super.headrs, body: body);
    return response;
  }

  Future<http.Response> login(String name, String password) async {
    var body = jsonEncode({'name': name, 'password': password});

    http.Response response =
    await http.post(super.authPath as Uri, headers: super.headrs, body: body);

    return response;
  }


  // Future<http.Response> logout(int id, String token) async {
  //   var body = jsonEncode({'id': id, 'token': token});
  //
  //   http.Response response = await http.post(super.logoutPath,
  //       headers: super.headrs, body: body);
  //
  //   return response;
  // }

}