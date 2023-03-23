import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Random.dart';

class ApiHelpers {
  ApiHelpers._();

  static final ApiHelpers apiHelpers = ApiHelpers._();

  Future<RandomData?> getData() async {
    String api = "https://randomuser.me/api/";
    http.Response data = await http.get(Uri.parse(api));

    if (data.statusCode == 200) {
      Map decodeData = jsonDecode(data.body);

    RandomData  allData = RandomData.fromMap(data: decodeData);

      return allData;
    }
    return null;
  }
}