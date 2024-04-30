import 'package:flutter/material.dart';
import 'package:tempflutter/model/simple_interest_model.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  int? principle = 0;
  int? time = 0;
  int? rate = 0;
  double result = 0;

  // Importing Simple Interest Model
  SimpleInterestModel? simpleInterest;

  Widget sizedbox = const SizedBox(
    height: 8,
  );

  //Create global key for form
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Interest',
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                principle = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Principle',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Principle";
                }
                return null;
              },
            ),
            sizedbox,
            TextFormField(
              onChanged: (value) {
                time = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Time',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Time";
                }
                return null;
              },
            ),
            sizedbox,
            TextFormField(
              onChanged: (value) {
                rate = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Rate',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Rate";
                }
                return null;
              },
            ),
            sizedbox,
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    simpleInterest = SimpleInterestModel(
                        principle: principle, rate: rate, time: time);
                    result = simpleInterest!.calculateSimpleInterest();
                  });
                }
                //Run the code only if the data is validated
              },
              child: const Text("Calculate"),
            ),
            Text(
              style: const TextStyle(
                fontSize: 25,
              ),
              "The simple interest is : $result",
            )
          ],
        ),
      ),
    );
  }
}
