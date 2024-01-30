import 'package:flutter/material.dart';

class FormContainerWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  const FormContainerWidget({super.key, required this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(hintText: hintText, border: InputBorder.none),
      ),
    );
  }
}
