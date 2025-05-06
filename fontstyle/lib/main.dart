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
          title: const Text('Material App Bar'),
        ),
        body: Fonttheme(),
      ),
    );
  }
}
class Fonttheme extends StatefulWidget {
  const Fonttheme({super.key});

  @override
  State<Fonttheme> createState() => _FontthemeState();
}

class _FontthemeState extends State<Fonttheme> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("The University of Lahore",
        style: TextStyle(fontFamily: "Schyler",fontSize: 50),),
        Text("The university of Lahore")
      ],
    );
  }
}
