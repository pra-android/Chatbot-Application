import 'package:chatbot_app/chatbot/chatbot_footer.dart';
import 'package:chatbot_app/chatbot/chatbot_response_answers.dart';
import 'package:chatbot_app/chatbot/chatbot_welcome_tag.dart';
import 'package:chatbot_app/controllers/authController/logoutController.dart';
import 'package:chatbot_app/controllers/authController/registrationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  @override
  Widget build(BuildContext context) {
    final logoutController = Get.put(Logoutcontroller());
    final registercontroller = Get.put(Registrationcontroller());

    Future<String> getusernamevalues() async {
      SharedPreferences sp = await SharedPreferences.getInstance();
      return sp.getString(registercontroller.usernames)!;
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Flutter GPT",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: FutureBuilder(
                    future: getusernamevalues(),
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      return Text("${snapshot.data.toString()[0]}",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 19)));
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                  onPressed: () {
                    logoutController.logoutid();
                  },
                  icon: const Icon(Icons.logout, color: Colors.black)),
            ),
          ],
        ),
        body: const Stack(children: [
          //Questions and Answers
          ChatbotWelcomeTag(),
          ChatbotResponseAnswers(),
          //Footer
          ChatbotFooter()
        ]));
  }
}
