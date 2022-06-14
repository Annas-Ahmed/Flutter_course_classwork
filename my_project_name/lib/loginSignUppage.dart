import 'package:flutter/material.dart';

class loginSignup extends StatelessWidget {
  const loginSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Panel"),
      ),
      body: Container(
        width: double.infinity,
        height: 650,
        color: Color.fromARGB(255, 9, 152, 192),
        child: Center(
          child: Container(
              width: 300,
              height: 250,
              color: Color.fromARGB(255, 13, 21, 126),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a search term',
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
