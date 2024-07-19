import 'package:chatbot_app/utilities/Constants.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingData {
  static getPages() {
    return [
      PageViewModel(
          decoration: const PageDecoration(imageFlex: 2),
          image: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Image.asset(ConstantsClass.onboard1),
          ),
          titleWidget: const Text(
            "Welcome to Your Personal Assistant",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          bodyWidget: const Text(
              "Meet your new virtual assistant! Whether you need help with managing tasks, answering questions, or just having a friendly chat, our chatbot is here to make your life easier. Let's get started!")),
      PageViewModel(
          decoration: const PageDecoration(imageFlex: 2),
          image: Image.asset(
            ConstantsClass.onboard2,
            height: 320,
            fit: BoxFit.fill,
          ),
          titleWidget: const Text(
            " Your 24/7 Companion",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          bodyWidget: const Text(
              "Always available and ready to assist, your chatbot companion is here to support you around the clock. From finding information to managing tasks, enjoy the convenience of having help whenever you need it.")),
      PageViewModel(
          decoration: const PageDecoration(imageFlex: 2),
          image: Image.asset(
            ConstantsClass.onboard3,
            height: 320,
            fit: BoxFit.cover,
          ),
          titleWidget: const Text(
            "Stay Organized and Informed",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          bodyWidget: const Text(
              "Keep track of your schedule, get reminders, and stay updated with the latest information. Our chatbot helps you stay organized and ensures you never miss an important task or event. Ready to boost your productivity?"))
    ];
  }
}
