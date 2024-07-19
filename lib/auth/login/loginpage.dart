import 'package:chatbot_app/auth/login/loginFooter.dart';
import 'package:chatbot_app/auth/login/loginForm.dart';
import 'package:chatbot_app/auth/login/loginheader.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [LoginHeader(), LoginForm(), LoginFooter()]),
        ));
  }
}
