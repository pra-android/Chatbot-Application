import 'package:chatbot_app/controllers/authController/registrationController.dart';
import 'package:chatbot_app/utilities/common_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool hidepassword = true;
  bool hidepassword2 = true;
  @override
  Widget build(BuildContext context) {
    final formController = Get.find<Registrationcontroller>();

    return Column(children: [
      const SizedBox(height: 45),
      const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              "Username:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      CustomTextField(
        icondata: const Icon(Icons.person),
        obscureText: false,
        controller: formController.userController,
        validator: (value) {
          return formController
              .validateusername(formController.userController.text);
        },
      ),

      const SizedBox(
        height: 20,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              "Password:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      CustomTextField(
        obscureText: hidepassword,
        icondata: const Icon(
          Icons.remove_red_eye,
          color: Colors.grey,
        ),
        vcb: () {
          setState(() {
            hidepassword = !hidepassword;
          });
          print(hidepassword);
        },
        controller: formController.passwordController,
        validator: (val) {
          return formController
              .validatePassword(formController.passwordController.text);
        },
      ),
      //confirm password
      const SizedBox(
        height: 10,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              "Confirm Password:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      CustomTextField(
          obscureText: hidepassword2,
          icondata: const Icon(
            Icons.remove_red_eye,
            color: Colors.grey,
          ),
          vcb: () {
            setState(() {
              hidepassword2 = !hidepassword2;
            });
          },
          controller: formController.confirmPasswordController,
          validator: (value) {
            return formController.validateConfirmPassword(value!);
          }),
      const SizedBox(
        height: 10,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              "Email:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      CustomTextField(
        obscureText: false,
        controller: formController.emailController,
        icondata: const Icon(Icons.email),
        validator: (val) {
          return formController
              .validateEmail(formController.emailController.text);
        },
      ),
    ]);
  }
}
