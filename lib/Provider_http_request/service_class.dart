import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'data_model.dart';
import 'package:http/http.dart' as http;

Future<DataModel?> getSinglePostData() async {
  DataModel? result;
  try {
    final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
        headers: {HttpHeaders.contentTypeHeader: "application/json"});
    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      result = DataModel.fromJson(item);
    } else {
      print("error");
    }
  } catch (e) {
    log(e.toString());
  }
  return result;
}
