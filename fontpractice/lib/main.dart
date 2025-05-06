import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Font Change',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: const Fontfunction(),
      ),
    );
  }
}

class Fontfunction extends StatefulWidget {
  const Fontfunction({super.key});

  @override
  State<Fontfunction> createState() => _FontfunctionState();
}

class _FontfunctionState extends State<Fontfunction> {
  String selectedFont = 'Trajan Pro Font';

  void changeFont(String fontName) {
    setState(() {
      selectedFont = fontName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Which font do you want to use? Click it..!",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontFamily: selectedFont,
              color: Colors.cyan,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              changeFont('Schyler');
            },
            child: const Text("Schyler Font"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              changeFont('TrajanPro');
            },
            child: const Text("Trajan Pro Font"),
          ),
        ],
      ),
    );
  }
}
