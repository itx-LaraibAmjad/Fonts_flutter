import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: MyWidget(),
      ),
    );
  }
}

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   int counter = 0;
//   void increment() {
//     setState(() {
//       counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return ElevatedButton(
//       onPressed: () {
//         increment();
//       },
//       child: Text("Increment,$counter"),
//       // or we also write it as
//       // onPressed: increment,
//       // child: Text("$counter"),
//     );
//   }
// }
// this is for increm and decrement
// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   int counter = 0;

//   void increment() {
//     setState(() {
//       counter++;
//     });
//   }

// //  for reset
//   void decrement() {
//     setState(() {
//       counter = 0;
//     });
//   }
//   // for decrement
//   // void decrement() {
//   //   setState(() {
//   //     counter--;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 300,
//           width: 400,
//           child: Column(
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   increment();
//                 },
//                 child: Text("increment"),
//               ),
//               Text("Increment,$counter"),
//               ElevatedButton(
//                 onPressed: () {
//                   decrement();
//                 },
//                 child: Text("Reset"),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
// this is for Checkbox
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isChecked = false;
  // function to update the checkbox state when its toggled
  void toggleCheckbox(bool? value) {
    setState(() {
      isChecked = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 200,
          color: const Color.fromARGB(255, 195, 215, 224),
          child: Column(
            children: [
          Text("Red",style: TextStyle(color: Colors.red),),
          Checkbox(value: isChecked,
        // onchecked = (value){toggleCheckbox}
        onChanged: toggleCheckbox),
        Text(isChecked?"checked":"not checked"),
        if (isChecked)  Text("Color: red"),],
          ),
        )
      ],

    );
  }
}
