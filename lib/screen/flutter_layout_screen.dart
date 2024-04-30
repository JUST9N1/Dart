import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Trying Layouts"),
        ),
        body: Container(
          height: 100,
          // decoration: const BoxDecoration(border: BorderDirectional(top:, bottom:)),
          margin: const EdgeInsets.all(15),
          color: Colors.green[400],
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Icon(Icons.phone),
                SizedBox(
                  height: 15,
                ),
                Text("call")
              ]),
              Column(
                children: [
                  Icon(Icons.share),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Share")
                ],
              ),
              Column(
                children: [
                  Icon(Icons.route),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Route")
                ],
              )
            ],
          ),
        ));
  }
}
