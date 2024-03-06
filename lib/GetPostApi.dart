 import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class GetPost extends StatelessWidget {
  const GetPost({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    );
  }
}

void getPost() async{

  var dio = Dio();
  var response = await Future.wait([

    dio.get("https://jsonplaceholder.typicode.com/posts/1"),
    dio.post("")
  ]);
}
