import 'package:class_260622/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}


TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();

signupFunc() async {
  try {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("signup"),
      ),
      body: Column(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.7, child: TextField(
            controller: emailController,
          )),
          SizedBox(width: MediaQuery.of(context).size.width * 0.7, child: TextField(
            controller: passwordController,
          )),
          SizedBox(
              height: 100,
              width: 100,
              child: ElevatedButton(onPressed: () {signupFunc();}, child: Text("signup"))),
          SizedBox(
              height: 100,
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    });
                  },
                  child: Text("goto login"))),
        ],
      ),
    );
  }
}
