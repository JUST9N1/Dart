import 'package:flutter/material.dart';
import 'package:tempflutter/common_widget/my_button.dart';
import 'package:tempflutter/common_widget/my_text_form_field.dart';

class CustomWidgetFieldScreen extends StatefulWidget {
  const CustomWidgetFieldScreen({super.key});

  @override
  State<CustomWidgetFieldScreen> createState() =>
      _CustomWidgetFieldScreenState();
}

class _CustomWidgetFieldScreenState extends State<CustomWidgetFieldScreen> {
  int? firstnumber;
  int? secondnumber;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Field")),
      body: Column(
        children: [
          MyTextFormField(
              text: "Enter first number",
              onChanged: (value) {
                firstnumber = int.tryParse(value);
              }),
          const SizedBox(
            height: 10,
          ),
          MyTextFormField(
              text: "Enter second number",
              onChanged: (value) {
                secondnumber = int.tryParse(value);
              }),
          const SizedBox(
            height: 10,
          ),
          MyButton(
              onPressed: () {
                setState(() {
                  result = firstnumber! + secondnumber!;
                });
              },
              text: "Add"),
          const SizedBox(
            height: 10,
          ),
          Text("The result is $result")
        ],
      ),
    );
  }
}
