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
        body: Textfield1(),
      ),
    );
  }
}

// class Textfield1 extends StatefulWidget {
//   const Textfield1({super.key});

//   @override
//   State<Textfield1> createState() => _Textfield1State();
// }

// class _Textfield1State extends State<Textfield1> {

//   var tf1 = TextEditingController();
//    var tf2 = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextField(
//           controller: tf1,
//           decoration: InputDecoration(labelText: "Enter your beautiful name"),
//         ),
//         TextField(
//           controller: tf2,
//           decoration: InputDecoration(labelText: "Enter your Age"),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             // ignore: avoid_print
//             print(tf1.text);
//             // ignore: avoid_print
//             print(tf2.text);
//           },
//           child: Text("GET DATA"),
//         ),
//       ],
//     );
//   }
// }

// class Textfield1 extends StatefulWidget {
//   const Textfield1({super.key});

//   @override
//   State<Textfield1> createState() => _Textfield1State();
// }

// class _Textfield1State extends State<Textfield1> {
//   String st = "Pakistan"; // Initial value
//   var tf1 = TextEditingController();
//   void changevalue(String val) {
//     setState(() {
//       st = val; // Update value
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextField(
//           controller: tf1,
//           decoration: InputDecoration(labelText: "Enter your beautiful name"),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             changevalue(tf1.text); // Update `st` when button is pressed
//           },
//           child: Text("GET DATA"),
//         ),

//         SizedBox(height: 20),

//         Text(
//           "Your name is: $st", // Showing the updated value
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }

class Textfield1 extends StatefulWidget {
  const Textfield1({super.key});

  @override
  State<Textfield1> createState() => _Textfield1State();
}

class _Textfield1State extends State<Textfield1> {
  var tf1 = TextEditingController();
  var tf2 = TextEditingController();
  void changevalue(String val) {
    setState(() {
      tf2 = tf1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: tf1,
          decoration: InputDecoration(labelText: "Enter your beautiful name"),
        ),
        TextField(
          controller: tf2,
          decoration: InputDecoration(labelText: "Enter your Age"),
        ),
        ElevatedButton(
          onPressed: () {
            changevalue(tf1.text); // Update `st` when button is pressed
          },
          child: Text("GET DATA"),
        ),

        SizedBox(height: 20),
      ],
    );
  }
}
