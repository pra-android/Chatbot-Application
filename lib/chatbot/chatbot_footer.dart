import 'package:chatbot_app/controllers/apiController/apiControllers.dart';
import 'package:chatbot_app/controllers/apiController/apilogic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatbotFooter extends StatelessWidget {
  const ChatbotFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final apiControllers = Get.put(Apicontrollers());
    final apilogic = Get.put(Apilogic());

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: BottomAppBar(
        color: Colors.white,
        height: 65,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                controller: apilogic.inputmessage,
                decoration: InputDecoration(
                  hintText: 'Your Prompt here',
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      apiControllers.fetchdatas();
                      apilogic.sendMessage();
                      print("Question is");
                      print(apilogic.displayinputmessage);
                      apilogic.inputmessage.clear();
                    },
                    icon: const Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
