import 'dart:convert';

import 'package:chaplean/data/models/register_response.dart';
import 'package:http/http.dart' as http;
import '../../utils/constants/endpoints.dart';


class LoginService {
  Future<RegisterResponse?> login(
      {required String email, required String password}) async {
    final Uri loginUri = Uri.parse(EndPoints.loginUrl);
    final body = {
      "username": email,
      "password": password,
    };
    final http.Response response = await http.post(loginUri, body: body);

    if (response.statusCode > 199 && response.statusCode < 300) {
      final data = jsonDecode(response.body);
      return RegisterResponse.fromJson(data);
    } 
      return null;
  }
}
