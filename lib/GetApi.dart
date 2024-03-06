
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Getapi extends StatelessWidget {
  const Getapi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("Get Api Screen", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  fetchData();
                },
                child: Text("Get Data")),

          ],
        ),
      ),
    );
  }
}


void fetchData() async{
  var dio = Dio();
  var response = await dio.get("https://jsonplaceholder.typicode.com/posts/1");

  if(response.statusCode==200){
      var user =  response.data['userId'];
      var id = response.data['id'];
      Text(user, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),);
      Text(id, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),);
  }


}
