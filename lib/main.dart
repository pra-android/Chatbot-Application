import 'package:chatbot_app/MyHomePage.dart';
import 'package:chatbot_app/chatbot/ChatbotScreen.dart';
import 'package:chatbot_app/controllers/authController/registrationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Registrationcontroller rc = Get.put(Registrationcontroller());
  Future<void> _checkLoginStatus() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final bool isLoggedIn = sp.getBool(rc.isLogIn) ?? false;
    if (isLoggedIn) {
      Get.offAll(() => const ChatbotScreen());
    } else {
      Get.offAll(() => const MyHomePage());
    }
  }

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MyHomePage(),
    );
  }
}
