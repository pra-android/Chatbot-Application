import 'package:chatbot_app/auth/login/loginpage.dart';
import 'package:chatbot_app/controllers/authController/registrationController.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logoutcontroller extends GetxController {
  Future<void> logoutid() async {
    Registrationcontroller rc = Get.put(Registrationcontroller());
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setBool(rc.isLogIn, false);
    print("Log OutSuccessfully");
    Get.to(() => LoginPage());
  }
}
