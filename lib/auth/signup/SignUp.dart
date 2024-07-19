import 'package:chatbot_app/auth/signup/signup_form.dart';
import 'package:chatbot_app/auth/signup/signup_header.dart';
import 'package:chatbot_app/controllers/authController/registrationController.dart';
import 'package:chatbot_app/utilities/common_widgets/custom_outlinebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final formController = Get.put(Registrationcontroller());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: Get.context!.height,
          child: Form(
            key: formController.formkey,
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  //Sign Up Header
                  SignUpHeader(),

                  //Sign Up Form
                  const SizedBox(height: 15),
                  SignUpForm(),

                  //Sign Up Button
                  SizedBox(
                    height: 25,
                  ),
                  CustomOutlinebutton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
