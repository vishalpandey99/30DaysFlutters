
import 'package:first_flutter/TestDirectory/testpage.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'GetApi.dart';
import 'PostApi.dart';
import 'package:dio/dio.dart';
import 'dart:io';

import 'TestDirectory/HomePage.dart';
import 'TestDirectory/LoginPage.dart';

void main() {
  runApp(LoginPage()); //MaterialApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     // initialRoute: "/login",
    themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
       "/": (context) => LoginPage(),
        "/home": (context) => HomePage()

      },
    );
  }
}














