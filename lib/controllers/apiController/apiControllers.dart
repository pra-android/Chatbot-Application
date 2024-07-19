import 'package:chatbot_app/controllers/apiController/apilogic.dart';
import 'package:get/get.dart';

class Apicontrollers extends GetxController {
  var apilogic = Get.put(Apilogic());

  var restapimodels = [].obs;
  var loading = true.obs;

  Future<void> fetchdatas() async {
    try {
      loading(true);
      var apidatas = await apilogic.fetchingapivalues();
      if (apidatas != null) {
        restapimodels.assignAll(apidatas);

        print("API Datas");
        print(restapimodels.length);
        print(restapimodels[0].texts);
        print(restapimodels[0].texts.runtimeType);
      }
    } catch (e) {
      print(e.toString());
    } finally {
      loading(false);
    }
  }
}
