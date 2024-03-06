
import 'package:first_flutter/testpage.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'GetApi.dart';
import 'PostApi.dart';
import 'package:dio/dio.dart';
import 'dart:io';

void main() {
  runApp(MyApp()); //MaterialApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vishal Pandey"),
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          color: Colors.blue,
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.only(top: 20),
        ),
      ),
    );
  }
}














