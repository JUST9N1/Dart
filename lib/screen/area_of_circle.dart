import 'package:flutter/material.dart';
import 'package:tempflutter/model/area_of_circle_model.dart';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({super.key});

  @override
  State<AreaCircleScreen> createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  double? radius;
  double result = 0;

  //Relationship
  // Loosely coupled
  AreaOfCircleModel? areaCircleModel;

  // Create global key for form
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.amber,
        title: const Text(
          'Circle calculator',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              // Enter fradius
              TextFormField(

                keyboardType: TextInputType.number,
                onChanged: (value) {
                  radius = double.parse(value);
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter radius',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)
                    )
                    ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter radius to calculate";
                  } else {
                    return null;
                  }
                },
              ),

              const SizedBox(
                height: 8,
              ),

              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    setState(
                      () {
                        areaCircleModel = AreaOfCircleModel(
                          radius: radius!,
                        );
                        result = areaCircleModel!.areaOfCircle();
                      },
                    );
                  }
                },
                child: const Text('Calculate'),
              ),
              const SizedBox(
                height: 8,
              ),
              // Text(
              //   'Area of Circle with radius is : $result',
              //   style: const TextStyle(
              //     fontSize: 30,
              //   ),
              // ),

              RichText(
                  text: TextSpan(
                      text: "A",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.yellow,
                        backgroundColor: Colors.green,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: "rea of Circle: $result",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
