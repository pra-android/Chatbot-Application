import 'package:chatbot_app/controllers/authController/loginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool hidepassword = true;
  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    final loginkey = GlobalKey<FormState>();
    return Form(
        key: loginkey,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
              child: TextFormField(
                style: const TextStyle(fontSize: 14, color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Username",
                    labelText: "Username",
                    hintStyle:
                        const TextStyle(color: Colors.black, fontSize: 14),
                    filled: true, // Enable filling the background
                    fillColor: Colors.blue.withOpacity(0.05),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide:
                            const BorderSide(width: 0.5, color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 0.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0))),
                controller: loginController.userController,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
              child: TextFormField(
                /* validator: (val) {
                  return loginController.validatePassword(
                      loginController.passwordController.text);
                },*/
                style: const TextStyle(fontSize: 14, color: Colors.black),
                obscureText: hidepassword,
                controller: loginController.passwordController,
                decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          hidepassword = !hidepassword;
                          setState(() {});
                        },
                        icon: Icon(
                          hidepassword == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                          size: 19,
                        )),
                    prefixIcon: const Icon(Icons.lock, size: 18),
                    hintText: "Password",
                    filled: true,
                    hintStyle:
                        const TextStyle(color: Colors.black, fontSize: 14),
                    fillColor: Colors.blue.withOpacity(0.05),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 0.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 0.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0))),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize:
                        Size(MediaQuery.of(context).size.width / 2 + 100, 55)),
                onPressed: () {
                  if (loginkey.currentState!.validate()) {
                    print(
                        "Usernmame and Password is ${loginController.userController.text} and ${loginController.passwordController.text}");

                    loginController.loginVerification(
                        loginController.userController.text,
                        loginController.passwordController.text);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        duration: Duration(seconds: 2),
                        content: Text('Login Unsuccessfull')));
                    print("Password Incorrect");
                  }
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ));
  }
}
