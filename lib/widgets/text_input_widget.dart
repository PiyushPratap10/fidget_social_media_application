import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget(
      {super.key,
      required this.textEditingController,
      this.isPass = false,
      required this.hintText,
      required this.textInputType});
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          constraints: const BoxConstraints(
            maxWidth: 250,
          ),
          fillColor: Theme.of(context).brightness == Brightness.dark
              ? const Color.fromARGB(255, 31, 31, 31)
              : const Color.fromARGB(255, 229, 229, 229),
          hintText: hintText,
          border: inputBorder,
          focusedBorder: inputBorder,
          errorBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
