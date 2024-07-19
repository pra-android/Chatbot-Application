import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registrationcontroller extends GetxController {
  final formkey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();
  String usernames = "_username";
  String passwords = "_password";
  String isLogIn = "_isLogIn";

  String? validateusername(String value) {
    return (value.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value))
        ? 'Please enter a valid  username'
        : null;
  }

  String? validatePassword(String value) {
    return (value.isEmpty || value.length <= 3)
        ? 'Please enter valid password'
        : null;
  }

  String? validateConfirmPassword(String value) {
    return value.isEmpty ||
            confirmPasswordController.text != passwordController.text
        ? "Password doesnot match"
        : null;
  }

  String? validateEmail(String email) {
    return GetUtils.isEmail(email) ? null : "Please Enter a valid email";
  }

  void getValuesAfterSignUp(
      String email, String password, String username) async {
    print("Username,Password and email is:${email},${password},${username}");
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(usernames, username);
    sp.setString(passwords, password);
    sp.setBool(isLogIn, true);
    print("Saved Data");
  }
}
