import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/api_model.dart';

class ApiService {
  Future<ApiPracticeModel> callAPI() async {
    String url = 'https://reqres.in/api/users?page=2';
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    final decodedData = jsonDecode(response.body);
    ApiPracticeModel apiPracticeModel = ApiPracticeModel.fromJson(decodedData);
    return apiPracticeModel;
  }
}


// second method with Headers(),




//