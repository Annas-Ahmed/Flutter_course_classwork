import 'package:class_260622/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Column(
        children: [
          SizedBox(height: 100, width: 100, child: const TextField()),
          SizedBox(height: 100, width: 100, child: const TextField()),
          SizedBox(
              height: 100,
              width: 100,
              child: ElevatedButton(onPressed: () {}, child: Text("login"))),
          SizedBox(
              height: 100,
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()),
                      );
                    });
                  },
                  child: Text("goto signup"))),
        ],
      ),
    );
  }
}
