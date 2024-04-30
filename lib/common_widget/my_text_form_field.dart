import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    required this.text,
    required this.onChanged,
    super.key,
  });
  final String text;
  final ValueChanged<String> onChanged;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          InputDecoration(hintText: text, border: const OutlineInputBorder()),
      onChanged: onChanged,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
