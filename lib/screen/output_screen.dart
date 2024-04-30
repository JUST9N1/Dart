import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String? firstName;

  const OutputScreen({
    required this.firstName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Output",
        ),
      ),
      body: Center(
          child: Text(
        "Title $firstName",
      )),
    );
  }
}
