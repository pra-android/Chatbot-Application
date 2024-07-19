import 'package:chatbot_app/chatbot/ChatbotScreen.dart';
import 'package:chatbot_app/controllers/authController/registrationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final signupController = Get.put(Registrationcontroller());

  void loginVerification(String username, String password) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    var getusername = sp.getString('${signupController.usernames}');
    var getpassword = sp.getString(signupController.passwords);

    if (username == getusername && password == getpassword) {
      Get.offAll(() => const ChatbotScreen());
      Get.snackbar("Message", "Login Successfully",
          duration: const Duration(
            seconds: 2,
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          maxWidth: 350,
          backgroundColor: Colors.grey,
          colorText: Colors.black,
          snackPosition: SnackPosition.TOP);
      sp.setBool(signupController.isLogIn, true);
    } else {
      Get.snackbar("Login Failed", "Incorrect username or password",
          duration: const Duration(
            seconds: 2,
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          maxWidth: 350,
          backgroundColor: Colors.black,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP);
    }
  }
}
