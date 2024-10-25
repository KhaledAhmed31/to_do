import 'package:flutter/material.dart';
import 'package:to_do/themes&colors/my_colors.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final int maxLines;
  final double size;
  final FontWeight fontWeight;
  final String? Function(String?)? validator;
  const MyTextField(
      {super.key,
      required this.controller,
      this.validator,
      required this.hint,
      required this.maxLines,
      required this.size,
      required this.fontWeight});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool isDark;
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
          controller: widget.controller,
          cursorColor: MyColors.lightBlue,
          validator: widget.validator,
          maxLines: widget.maxLines,
          style: TextStyle(
              color: isDark ? Colors.white : MyColors.lightBlue,
              fontSize: widget.size,
              fontWeight: widget.fontWeight),
          decoration: InputDecoration(
            hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
            hintText: widget.hint,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyColors.lightBlue, width: 2),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(10)),
          )),
    );
  }
}
