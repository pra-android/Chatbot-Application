import 'package:chatbot_app/controllers/apiController/apiControllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatbotResponseAnswers extends StatelessWidget {
  const ChatbotResponseAnswers({super.key});

  @override
  Widget build(BuildContext context) {
    final apiControllers = Get.put(Apicontrollers());
    return Positioned(
      top: 50,
      left: 0,
      bottom: 50,
      right: 0,
      child: Obx(() {
        if (apiControllers.loading.value) {
          return const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
            ],
          );
        } else {
          return Flexible(
            child: ListView.builder(
                itemCount: apiControllers.restapimodels.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                          width: Get.context!.width,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                apiControllers.restapimodels[0].texts
                                    .toString(),
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                  color: Colors.black,
                                ))),
                          )),
                    ),
                  ]);
                }),
          );
        }
      }),
    );
  }
}
