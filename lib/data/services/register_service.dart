import 'dart:convert';
import 'dart:developer';

import 'package:chaplean/data/models/register_response.dart';
import 'package:chaplean/utils/constants/endpoints.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  Future<RegisterResponse?> register(
      {required String username,
      required String email,
      required String password}) async {
    final Uri url = Uri.parse(EndPoints.registerUrl);
    final body = {"username": username, "email": email, "password": password};
    final http.Response response = await http.post(url, body: body);
    log('Cavab statusu: ${response.statusCode}');
    log('Cavab gövdəsi: ${response.body}');
    if (response.statusCode > 199 && response.statusCode < 300) {
      final data = jsonDecode(response.body);
      log('Pars edilmiş data: $data');
      return RegisterResponse.fromJson(data);
    }
    return null;
  }
}
