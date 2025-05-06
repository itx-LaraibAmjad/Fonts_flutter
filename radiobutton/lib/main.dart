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
        body: Radiobutton1(),
      ),
    );
  }
}

class Radiobutton1 extends StatefulWidget {
  const Radiobutton1({super.key});

  @override
  State<Radiobutton1> createState() => _Radiobutton1State();
}

// class _Radiobutton1State extends State<Radiobutton1> {
//   String st = "male";
//   void radiostate(String? st1) {
//     setState(() {
//       st = st1!;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Radio(
//       value: "Option1",
//       groupValue: st,
//       onChanged: (value){
//         // ignore: avoid_print
//       print(st);
//       radiostate(value);
//       // ignore: avoid_print
//       print(st);
//     });
//   }
// }
// using list tile
// class _Radiobutton1State extends State<Radiobutton1> {
//   String st = "human";
//   void radiostate(String? opval) {
//     setState(() {
//       st = opval!;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         RadioListTile(
//           value: "MALE",
//           title: Text("Male"),
//           groupValue: st,
//           onChanged: (value) {
//             radiostate(value);
//           },
//         ),
//         RadioListTile(
//           value: "FEMALE",
//           title: Text("Female"),
//           groupValue: st,
//           onChanged: (value) {
//             radiostate(value);
//           },
//         ),
//         Text("The Value of options= $st")
//       ],
//     );
//   }
// }
// now make four box 
class _Radiobutton1State extends State<Radiobutton1> {
  String st = "Colors";
  void radiostate(String? opval) {
    setState(() {
      st = opval!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: "Red",
          title: Text("Red"),
          groupValue: st,
          onChanged: (value) {
            radiostate(value);
          },
        ),
        RadioListTile(
          value: "Blue",
          title: Text("Blue"),
          groupValue: st,
          onChanged: (value) {
            radiostate(value);
          },
        ),
        RadioListTile(
          value: "Green",
          title: Text("Green"),
          groupValue: st,
          onChanged: (value) {
            radiostate(value);
          },
        ),
        Text("The Color is $st")
      ],
    );
  }
}