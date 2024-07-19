import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 90,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 45,
            width: Get.context!.width,
            child: const Center(
                child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 45,
            width: Get.context!.width,
            child: const Center(
                child: Text(
              "Create an account.It's free",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ],
    );
  }
}
