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
        body: Richtext1(),
      ),
    );
  }
}
class Richtext1 extends StatefulWidget {
  const Richtext1({super.key});

  @override
  State<Richtext1> createState() => _Richtext1State();
}

class _Richtext1State extends State<Richtext1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(text: TextSpan(
        style:TextStyle(color: Colors.deepPurple,fontSize: 50),
        children: [
          TextSpan(text: "THE "),
          TextSpan(text: "University ",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600,fontSize: 30)),
          TextSpan(text: "of "),
          TextSpan(text: "Lahore"),
        ]
      )),
    );
  }
}