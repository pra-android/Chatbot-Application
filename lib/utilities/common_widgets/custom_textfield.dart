import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final IconButton? iconButton;
  final VoidCallback? vcb;
  final Widget icondata;

  CustomTextField(
      {super.key,
      required this.obscureText,
      this.iconButton,
      required this.validator,
      required this.icondata,
      this.vcb,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            suffixIcon: IconButton(onPressed: vcb, icon: icondata),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(color: Colors.black, width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ))),
      ),
    );
  }
}
