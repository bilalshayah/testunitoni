// ignore_for_file: file_names, avoid_print
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class TestController extends GetxController {
  fetchData(String query);
}

class TestControllerImp extends TestController {
  List<dynamic> results = [];
  TextEditingController tesla1 = TextEditingController();
  TextEditingController tesla2 = TextEditingController();

  @override
  Future<void> fetchData(String query) async {
    final url = Uri.parse('https://newsapi.org/v2/everything?q=$query&apiKey=61123a38b89345c6a0809712de24ce01');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      results = data['articles'];
      update();
    } else {
      print("error");
    }
  }
}
