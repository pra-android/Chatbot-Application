import 'package:chatbot_app/auth/signup/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Don't have an Account?"),
            TextButton(
                onPressed: () {
                  Get.to(() => const SignUp());
                },
                child: const Text("Sign Up"))
          ],
        )
      ],
    );
  }
}
