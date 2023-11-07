// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

class TextFieldNews extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? labelText;
  final IconData? icon;
  final Color? fillColor;
  final String text;
  final void Function(String)? onChanged;
  final void Function()? onPressed;
  const TextFieldNews(
      {super.key, this.controller, this.validator, this.labelText, this.icon, this.onPressed, required this.text, this.onChanged, this.fillColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      //   margin: const EdgeInsets.only(left: 20),
      //  width: 500,
      //  height: 100.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            onChanged: onChanged,
            style: const TextStyle(height: 1.0, color: Colors.white),
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
                filled: true,
                fillColor: fillColor,
                errorMaxLines: 1,
                hintText: text,
                hintStyle: const TextStyle(color: Colors.white),
                // contentPadding: EdgeInsets.symmetric(horizontal: 10),
                suffixIcon: IconButton(splashRadius: 20, onPressed: onPressed, icon: Icon(icon, color: Colors.blue, size: 20)),
                labelText: labelText,
                floatingLabelStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),
                labelStyle: const TextStyle(height: 0.1, color: Color(0xff979BA6), fontSize: 16),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Colors.grey)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Colors.grey))),
          ),
        ],
      ),
    );
  }
}
