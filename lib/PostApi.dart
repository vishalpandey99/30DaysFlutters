
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:fluttertoast/fluttertoast.dart';

final addharnum = TextEditingController();
final bankacc =  TextEditingController();
final bankifsc = TextEditingController();
final bcode = TextEditingController();
final dlno = TextEditingController();
final dlvaliddate = TextEditingController();
final drivermobno = TextEditingController();
final drivername = TextEditingController();
final enterby = TextEditingController();
final nameinbank = TextEditingController();
final status = TextEditingController();
final upiid = TextEditingController();
final upiPaymentApp = TextEditingController();
final userid = TextEditingController();
final username = TextEditingController();

class Vishal extends StatelessWidget {
  const Vishal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [

              TextField(
                controller: addharnum,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Addhar Number',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: bankacc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Bank Number',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: bankifsc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter IFSC Number',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: bcode,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter B Code',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: dlno,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Addhar DL Number',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: dlvaliddate,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter DL Valid date',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: drivermobno,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Driver Mob Number',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: drivername,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Driver Name',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: nameinbank,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Name In Bank',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter User Name',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {
                  postData();
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void postData() async{
  var dio = Dio()
    ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
  try {
    var response = await dio.post("https://omsanchar.omlogistics.co.in/oracle/android_api/driverApk.php",
        data: {'aadhar_no' : addharnum.text, 'bank_acc_no' : bankacc.text, 'bank_ifsc' : bankifsc.text, 'bcode' : bcode.text, 'dl_no' : dlno.text, 'dl_valid_date' : dlvaliddate.text,
          'driver_mob_no' : drivermobno.text, 'driver_name' : drivername.text, 'enter_by' : '26647', 'name_in_bank' : nameinbank.text, 'status' : 'bank', 'upi_id' : '_',
          'upi_payment_app' : '_', 'user_id' : '100694', 'user_name' : username.text});

    if(response.statusCode == 200){
      Fluttertoast.showToast(
        msg: response.data['message'],
        backgroundColor: Colors.grey,
      );
      //print(responce.data['Status']);
    }
  }
  catch (e) {
    print(e);
  }

}
