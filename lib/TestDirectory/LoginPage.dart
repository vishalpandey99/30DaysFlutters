import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            Center(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 8
                    )
                  ),
                  hintText: "Enter User Name",
                  labelText: "User Name",
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 8
                    )
                  ),
                  hintText: "Enter Password",

                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 40,
              width: 400,
              child: ElevatedButton(
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                onPressed: (){
                  print("Hello Vishal Pandey");
                },
              ),
            )
          ],
        ),
      ),
            )
    );
  }
}
