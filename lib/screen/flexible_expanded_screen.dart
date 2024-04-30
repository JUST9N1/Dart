import 'package:flutter/material.dart';
import 'package:tempflutter/common_widget/my_button.dart';
import 'package:tempflutter/common_widget/my_snack_bar.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              color: Colors.amber,
              width: double.infinity,
              child: Center(
                  child: MyButton(
                      onPressed: () {
                        mySnackBar(
                          message: "Button 1",
                          context: context,
                        );
                      },
                      text: "Button 1")),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              width: double.infinity,
              child: Center(
                  child: MyButton(
                      onPressed: () {
                        mySnackBar(
                            message: "button 2",
                            context: context,
                            color: Colors.red);
                      },
                      text: "Button 2")),
            ),
          )
        ],
      ),
    );
  }
}
