import 'package:flutter/material.dart';

mySnackBar({
  required String message,
  required BuildContext context,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: color ?? Colors.green,
    content: Text(message),
    duration: const Duration(seconds: 1),
    behavior: SnackBarBehavior.floating,
  ));
}
