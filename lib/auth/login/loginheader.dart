import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        const Center(
            child: Text(
          "LOGIN",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
        const SizedBox(
          height: 10,
        ),
        Image.asset("assets/login.avif"),
      ],
    );
  }
}
