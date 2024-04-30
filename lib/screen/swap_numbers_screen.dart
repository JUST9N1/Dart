// import 'package:flutter/material.dart';
// import 'package:tempflutter/model/swap_numbers_model.dart';

// class SwapNumbers extends StatefulWidget {
//   const SwapNumbers({super.key});

//   @override
//   State<SwapNumbers> createState() => _SwapNumbersState();
// }

// class _SwapNumbersState extends State<SwapNumbers> {
//   int? first;
//   int? second;
//   int? temp;
//   int? result = 0;

//   SwapNumbersModel? swap;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Swap Numbers"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(children: [
//           TextField(
//             onChanged: (value) {
//               setState(() {
//                 first = int.tryParse(value);
//               });
//             },
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "First Number: ",
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           TextField(
//             onChanged: (value) {
//               setState(() {
//                 second = int.tryParse(value);
//               });
//             },
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Second Number",
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             "first: $first , second: $second",
//             style: const TextStyle(
//               fontSize: 23,
//             ),
//           ),
//           const SizedBox(height: 10),
//           ElevatedButton(
//             onPressed: () {
//               swap = SwapNumbersModel(first: first, second: second);
//               swap.reverse(first!, second!);
//             },
//             child: const Text("Reverse"),
//           ),
//         ]),
//       ),
//     );
//   }
// }
