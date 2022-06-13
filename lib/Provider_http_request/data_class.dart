import 'package:flutter/material.dart';
import 'package:flutter_todoey_app/Provider_http_request/data_model.dart';
import 'package:flutter_todoey_app/Provider_http_request/service_class.dart';
import 'package:http/http.dart';

class DataClass extends ChangeNotifier {
  DataModel? post;
  bool loading = false;

  getPostData() async {
    loading = true;
    post = (await getSinglePostData());
    loading = false;

    notifyListeners();
  }
}
