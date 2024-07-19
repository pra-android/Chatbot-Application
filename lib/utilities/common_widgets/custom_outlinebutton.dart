import 'package:chatbot_app/chatbot/ChatbotScreen.dart';
import 'package:chatbot_app/controllers/authController/registrationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomOutlinebutton extends StatelessWidget {
  const CustomOutlinebutton({super.key});

  @override
  Widget build(BuildContext context) {
    final formController = Get.find<Registrationcontroller>();
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: OutlinedButton(
          onPressed: () async {
            if (formController.formkey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  duration: Duration(seconds: 2),
                  content: Text('SignUp Successfully')));
              Get.offAll(() => const ChatbotScreen());

              formController.getValuesAfterSignUp(
                  formController.emailController.text,
                  formController.passwordController.text,
                  formController.userController.text);
              formController.confirmPasswordController.clear();
              formController.userController.clear();
              formController.emailController.clear();
              formController.passwordController.clear();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  duration: Duration(seconds: 2),
                  content: Text('SignUp Unsuccessfull')));
            }
          },
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  32.0), // Optional: You can add border-radius
            ),
            backgroundColor: Colors.blue.shade400,
            side: BorderSide(color: Colors.blue.shade500),
            fixedSize: Size(
              Get.context!.width,
              55,
            ),
          ),
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ));
  }
}
