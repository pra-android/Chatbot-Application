import 'package:chatbot_app/OnboardingData.dart';
import 'package:chatbot_app/auth/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        nextStyle: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => Colors.blue,
            ),
            fixedSize: MaterialStateProperty.all(Size(100, 50))),
        next: const Text(
          "Next",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        onDone: () async {
          print("Start Application");
        },
        done: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(100, 50), backgroundColor: Colors.blue),
          onPressed: () async {
            Get.to(() => const LoginPage());
          },
          child: const Text(
            " Start ",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16),
          ),
        ),
        dotsDecorator:
            const DotsDecorator(color: Colors.grey, activeColor: Colors.black),
        pages: OnBoardingData.getPages(),
      ),
    );
  }
}
