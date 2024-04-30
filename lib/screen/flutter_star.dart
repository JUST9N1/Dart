import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stars")),
      body: Container(
        // width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.star,
            ),
            Spacer(),
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        ),
      ),
    );
  }
}
