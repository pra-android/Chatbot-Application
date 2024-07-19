import 'package:chatbot_app/controllers/apiController/apilogic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatbotWelcomeTag extends StatelessWidget {
  const ChatbotWelcomeTag({super.key});

  @override
  Widget build(BuildContext context) {
    final apilogic = Get.put(Apilogic());
    return Positioned(
        top: 5,
        left: 10,
        child: Row(
          children: [
            CircleAvatar(
                radius: 19,
                backgroundColor: Colors.grey.shade200,
                child: const Icon(
                  Icons.star,
                  color: Colors.green,
                )),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 2.0,
              ),
              child: Obx(
                () => Text(
                  overflow: TextOverflow.ellipsis,
                  apilogic.displayinputmessage.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ));
  }
}
